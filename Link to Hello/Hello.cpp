#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Instruction.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include <map>

using namespace llvm;

namespace
{
	// Represents value expression
	struct valueExpressionStruct{
		int operand1;
		char op;
		int operand2;
	};	
	
	
	// Represents one equivalence Class
	struct equivalenceClassStruct{
		int valueNo;
		SetVector<Value *> constVarSet;
		valueExpressionStruct* valueExp;
	};
	
	
	// It will be assgined to new equivalence class
	int GlobalValueNo=1;
	
	
	//  Expression pool at input point of Instruction (set of valueNo-> Class corresponding to value no)
	DenseMap<Instruction *,DenseMap<int ,equivalenceClassStruct * >> EIN;
	//  Expression pool at out point of Instruction (set of valueNo-> Class corresponding to value no)
	DenseMap<Instruction *,DenseMap<int ,equivalenceClassStruct * > > EOUT;
	
	// Used to initialize out point with T (i.e. 1)
	DenseMap<Instruction *,bool > OutInit;
	
	
	// use to assign same value no to resultant class of intersection of same pair of class
	std::map<std::pair<int, int>, int> intersectionTable;
	
	
	
	
	
	struct SGVN:public FunctionPass
	{
		static char ID;
		SGVN():FunctionPass(ID){}

		int totalNoOfRedundancy=0;
		
		
		//find variable in constVarSet and remove it
		inline void killExpression(DenseMap<int ,equivalenceClassStruct * >& ExpPool, Value* v){
			// set flag when variable removed from expression Pool
			int flag=0;
			// access each pair of (valueNo, equivalenceClass)
			for(auto pair : ExpPool){
				// erase it from constVarset of equivalence Class				
				if(pair.second->constVarSet.remove(v)){
					// erased so perform deleteSingleton
					deleteSingleton(ExpPool);
					flag=1;
					break;
				}
				if(flag==1){
					// removed no need to go for further iteration
					break;
				}
			}
			
		}
		
			
		
		
		inline int findValueNo(Value* x, DenseMap<int,equivalenceClassStruct * >& ExpPool){
			// find value no of x 
			for(auto pair : ExpPool){
				struct equivalenceClassStruct* equiClass = pair.second;
				for(Value* var:equiClass->constVarSet){
					if(var==x){
						//found
						return equiClass->valueNo;
					}
				}
			}
			return -1;
		}
			
		
		
		inline const char* getOperator(unsigned OpCode){
			switch (OpCode) {
			// Standard binary operators...
			case Instruction::Add : return "+";
			break;
			case Instruction::FAdd : return "A";
			break;
			case Instruction::Sub : return "-";
			break;
			case Instruction::FSub : return "B";
			break;
			case Instruction::Mul : return "*";
			break;
			case Instruction::FMul : return "C";
			break;
			case Instruction::UDiv : return "U";
			break;
			case Instruction::SDiv : return "/";
			break;
			case Instruction::FDiv : return "D";
			break;
			case Instruction::URem : return "%";
			break;
			case Instruction::SRem : return "E";
			break;
			case Instruction::FRem : return "I";
			break;
			// Logical operators...
			case Instruction::And : return "&";
			break;
			case Instruction::Or : return "|";
			break;
			case Instruction::Xor : return "^";
			//shift operator
			//case Instruction::Shl: return "F";
			//break;
			//case Instruction::LShr: return "G";
			//break;
			//case Instruction::AShr:  return "H";
			//break;

			default: return "$";
			}
 		}
 		
 		
 		
 		
 		// finds value no of value expression 
 		inline int findValueNoOfExp(valueExpressionStruct* valExp,DenseMap<int ,equivalenceClassStruct * >& ExpPool){
 			for(auto pair : ExpPool){
				struct equivalenceClassStruct* equiClass = pair.second;
				// compare operand1 and operand2 and operator of eauivalence class's value expression with input value expression's corresponding operand1 and operand2 and operator.
				if((equiClass->valueExp!=NULL) && (equiClass->valueExp->operand1==valExp->operand1) && (equiClass->valueExp->operand2==valExp->operand2) && (equiClass->valueExp->op==valExp->op)){
					return equiClass->valueNo;
				}
			}
			return -1;
 		}
		
		
		
		
		// takes operand1 and operand2 and operator to creater value expression
		inline valueExpressionStruct* createValueExp(int operand1, int operand2, char op){
			valueExpressionStruct* e = new valueExpressionStruct();
			e->op=op;
			e->operand1=operand1;
			e->operand2=operand2;
			return e;
		}
		
		
		
		
		// it takes a euivalence class and copies it to new equivalence class and returns it
		inline struct equivalenceClassStruct * copyEquivalenceClass(struct equivalenceClassStruct *c){
			//create equivalence class in which we will do copy of other class
			struct equivalenceClassStruct * newEquivalenceClass = new equivalenceClassStruct();
			// copy value no
			newEquivalenceClass->valueNo = c->valueNo;
			// copy value expression
			if(c->valueExp!=NULL){
				newEquivalenceClass->valueExp = createValueExp(c->valueExp->operand1, c->valueExp->operand2, c->valueExp->op);
			}
			// copy each element from constvar set
			for(Value* v : c->constVarSet){
				newEquivalenceClass->constVarSet.insert(v);
			}
			return newEquivalenceClass;
			
		}
		
		
		
		
		// check class has value no only
		inline int findSingletonClass(DenseMap<int ,equivalenceClassStruct * >& ExpPool){
			for(auto pair: ExpPool){
				if(pair.second->constVarSet.empty())
					if(pair.second->valueExp==NULL)
						return pair.first;
			}
			return -1;
		}
		
		
		
		
		
		// remove value expression having operand as value no of singleton class
		inline void removeValueExp(int valueNo,DenseMap<int ,equivalenceClassStruct * >& ExpPool){
			for(auto pair: ExpPool){
				if(pair.second->valueExp!=NULL){
					if(pair.second->valueExp->operand1==valueNo ||pair.second->valueExp->operand2==valueNo){
						free(pair.second->valueExp);
						pair.second->valueExp=NULL;
					}
				}			
			}
		}	
		
		
		
		
		
		// performs deletion of singleteon class 
		void deleteSingleton(DenseMap<int ,equivalenceClassStruct * >& ExpPool){
			// get value no singleton class
			int valueNo = findSingletonClass(ExpPool);
			if(valueNo!=-1){
				// find class to be deleted from Expression pool using value no
				DenseMap<int ,equivalenceClassStruct * >::iterator it = ExpPool.find(valueNo);
				// delete Class first
				delete it->second;
				// remove it from Pool
				ExpPool.erase(valueNo);
				// remove value expression involving value no of singleton class
				removeValueExp(valueNo,ExpPool);
				// perform delete singleton recursively
				deleteSingleton(ExpPool);
			}
		}
		
		
		
		
		
		void printExpressionPool(DenseMap<int ,equivalenceClassStruct * >& ExpPool){
			errs()<<"[ ";
			for(auto pair : ExpPool){
				errs()<<"[";
				struct equivalenceClassStruct* equiClass = pair.second;
				// print value no
				errs()<<"v"<<equiClass->valueNo<<",";
				// print constVarSet		
				for(auto var: equiClass->constVarSet){
					// to print constant (getName returns empty string)
					if(ConstantInt* CI = dyn_cast<ConstantInt>(var)){
						errs()<<CI->getZExtValue()<<",";
					}
					else
						errs()<<var->getName()<<",";
				}
				// print value Expression
				if(equiClass->valueExp!=NULL)
				errs()<<"v"<<equiClass->valueExp->operand1<<equiClass->valueExp->op<<"v"<<equiClass->valueExp->operand2;
				errs()<<"], ";
			}
			errs()<<"]";
		}
		
		
		
		
		
		
		void printExpression(Instruction &I){
			errs()<<"\"";
			if (ConstantInt *c = (ConstantInt *) dyn_cast<ConstantInt>(I.getOperand(0))){
				errs()<<c->getZExtValue()<<" ";
			}
			else{
				errs()<<I.getOperand(0)->getName()<<" ";
			}
			errs()<<getOperator(I.getOpcode())<<" ";
			
			if (ConstantInt *c2 = (ConstantInt *) dyn_cast<ConstantInt>(I.getOperand(1))){
				errs()<<c2->getZExtValue();
			}
			else{
				errs()<<I.getOperand(1)->getName();
			}
			errs()<<"\"";
		
		}
		
		
		
		
		
		
		
		inline void handleLoadStoreInst(Value* x, Value* e, DenseMap<int ,equivalenceClassStruct * >& tempPool,DenseMap<int ,equivalenceClassStruct * >& oldEout){
			// find value no of e and add x to corresponding class of value no	
			int valueNo;
			valueNo= findValueNo(e,tempPool);
			if(valueNo!=-1){
				//found value no of e, insert x to same class
				tempPool[valueNo]->constVarSet.insert(x);
			}
			else{
				// find value no of new equivalence in oldEout
				int oldValueNo=findValueNo(e,oldEout);
				// create new class with e and x 
				struct equivalenceClassStruct* newEquivalenceClass = new equivalenceClassStruct();
				if(oldValueNo!=-1)	
						newEquivalenceClass->valueNo=oldValueNo;           // use old value no from oldEout for same equivalence class
					else
						newEquivalenceClass->valueNo=GlobalValueNo++;    // assign new value no 
				newEquivalenceClass->constVarSet.insert(e);
				newEquivalenceClass->constVarSet.insert(x);
				// add (v1-> class) in tempPool
				tempPool[newEquivalenceClass->valueNo]=newEquivalenceClass;
				
			}
			
		}
		
		
		
		
		
		
		
		
		// Transfer function
		DenseMap<int ,equivalenceClassStruct * > transferFunction(Instruction& Inst,DenseMap<int ,equivalenceClassStruct * >& oldEout){
			
			DenseMap<int ,equivalenceClassStruct * > tempPool;
			
			//tempPool <- EIN[&Inst]
			if((dyn_cast<StoreInst>(&Inst)!=NULL)|| (dyn_cast<LoadInst>(&Inst)!=NULL) || *(getOperator(Inst.getOpcode()))!='$' || (dyn_cast<CallInst>(&Inst)!=NULL)){
				//copy each class of EIN to tempPool 
				for(auto it:EIN[&Inst]){	
					tempPool[it.first]=copyEquivalenceClass(it.second);
				}
			}
			else{
				// direct copy IN to tempPool
				tempPool=EIN[&Inst];
			}
			
			
			if(isa<StoreInst>(&Inst)){

						//kill expressions involving operand(1)		
						killExpression(tempPool,Inst.getOperand(1));
						handleLoadStoreInst(Inst.getOperand(1),Inst.getOperand(0),tempPool,oldEout);
					
			
			}
			else if(isa<LoadInst>(&Inst)){

					handleLoadStoreInst(&Inst,Inst.getOperand(0),tempPool,oldEout);
				
			}
			/*else if(isa<CallInst>(&Inst)){
				DenseMap<int ,equivalenceClassStruct * > empty;
				tempPool=empty;
				
				// get all global varibales and remove it from Pool
				//CallInst *ci=dyn_cast<CallInst>(&Inst);
				for (Value &Global : Inst.getModule()->getGlobalList()){
					killExpression(tempPool,&Global);
					//errs()<<Global;
				}
			
				// remove all variables passed by refrence in call		
				int noOfOperands = ci->getNumOperands();
				for(int i=0; i<noOfOperands-1; i++)
				{
					Value* arg = ci->getArgOperand(i);
					if(arg->getType()->isPtrOrPtrVectorTy())
					{
						killExpression(tempPool,arg);
					}

				}
			
				killExpression(tempPool,ci);
					
			}*/	
			else if(!isa<CallInst>(&Inst)){
				// find value expression of form v1 op v2
				if(Inst.getNumOperands ()==2){
					const char op= *(getOperator(Inst.getOpcode()));
				
					if(op!='$'){
						// e will contain value expression
						valueExpressionStruct* e= new valueExpressionStruct();
						// store Operator in value expression
						e->op= op;
						// find value no of operand1
						e->operand1= findValueNo(Inst.getOperand(0),tempPool);
						//handle constant operand
						if(e->operand1==-1){
							// create new class with operand(0) and operand(1)
							struct equivalenceClassStruct* newEquivalenceClass = new equivalenceClassStruct();
							// find value no of new equivalence in oldEout
							int oldValueNo=findValueNo(Inst.getOperand(0),oldEout);
							// check oldValueNo is found then assign old value no to new class else give new value no
							if(oldValueNo!=-1)	
								newEquivalenceClass->valueNo=oldValueNo;
							else
								newEquivalenceClass->valueNo=GlobalValueNo++;
							e->operand1=newEquivalenceClass->valueNo;
							newEquivalenceClass->constVarSet.insert(Inst.getOperand(0));
							// add (v1-> class) in tempPool
							tempPool[newEquivalenceClass->valueNo]=newEquivalenceClass;
						
						
						}
						//find value no of operand2
						e->operand2= findValueNo(Inst.getOperand(1),tempPool);
						//handle constant operand
						if(e->operand2==-1){
							// create new class with operand(1)
							struct equivalenceClassStruct* newEquivalenceClass = new equivalenceClassStruct();
							// check oldValueNo is found then assign old value no to new class else give new value no
							int oldValueNo=findValueNo(Inst.getOperand(1),oldEout);
							if(oldValueNo!=-1)	
								newEquivalenceClass->valueNo=oldValueNo;
							else
								newEquivalenceClass->valueNo=GlobalValueNo++;
							e->operand2=newEquivalenceClass->valueNo;
							newEquivalenceClass->constVarSet.insert(Inst.getOperand(1));
							// add (v1-> class) in tempPool
							tempPool[newEquivalenceClass->valueNo]=newEquivalenceClass;
						
						}
						//find value no of e and add x to corresponding class of value no
						int valueNo=findValueNoOfExp(e,tempPool);	
						if(valueNo!=-1){
							// value no found for value expression , add x (Inst) to class of value no
							(tempPool[valueNo]->constVarSet).insert(&Inst);
						}
						else {
							// value no not found for value expression, create a new class with x (i.e. Inst) and value expression 
							struct equivalenceClassStruct* newEquivalenceClass = new equivalenceClassStruct();
							int oldValueNo=findValueNoOfExp(e,oldEout);	
							if(oldValueNo!=-1)
								 // use old value no from oldEout for same equivalence class	
								newEquivalenceClass->valueNo=oldValueNo;            
							else
								// assign new value no 
								newEquivalenceClass->valueNo=GlobalValueNo++;     
							newEquivalenceClass->constVarSet.insert(&Inst);
							newEquivalenceClass->valueExp=e;
							// add (v1-> class) in tempPool
							tempPool[newEquivalenceClass->valueNo]=newEquivalenceClass;
						
						}
					}
				}

			
			}

			// change initialized value from T to some thing else 
			OutInit[&Inst]=0;
			return tempPool;;
		}
		
			
				
		
		
		
		//performs special intersection
		equivalenceClassStruct * specialIntersection(equivalenceClassStruct * Ci, equivalenceClassStruct * Cj, DenseMap<int ,equivalenceClassStruct * >& Ei, DenseMap<int ,equivalenceClassStruct * >& Ej){
			// flag to check Ck is empty,(0 corresponds to empty)
			int flag=0;
			equivalenceClassStruct * Ck = new equivalenceClassStruct();
			// handle explicitly present common elements
			if(Ci->valueNo==Cj->valueNo){
					// ci and cj have same value no
					Ck->valueNo=Ci->valueNo;
					flag=1;
					
			}
			
			for(Value* e1 : Ci->constVarSet){
				for(Value* e2: Cj->constVarSet){
					if(e1==e2){
						// insert common variables and constant to Ck
						Ck->constVarSet.insert(e1);
						// set flag for non empty
						flag=1;
					}
				}
			}
			
			if(Ci->valueExp !=NULL && Cj->valueExp!=NULL && (Ci->valueExp->op==Cj->valueExp->op)){
				// check Ci and Cj have same value expression
				 if((Ci->valueExp->operand1==Cj->valueExp->operand1) && (Ci->valueExp->operand2==Cj->valueExp->operand2)){
				 	// assign copy value expression of Ci to Ck
				 	Ck->valueExp = createValueExp(Ci->valueExp->operand1,Ci->valueExp->operand2,Ci->valueExp->op);
				 	flag=1;
				 }
				 else{
					equivalenceClassStruct * Ck1=NULL,*Ck2=NULL,*Ci1,*Ci2,*Cj1,*Cj2;
					// get class corresponding to vi1
					Ci1 = Ei[Ci->valueExp->operand1];
					Ci2 = Ei[Ci->valueExp->operand2];
					Cj1 = Ej[Cj->valueExp->operand1];
					Cj2 = Ej[Cj->valueExp->operand2];
					
					Ck1= specialIntersection(Ci1,Cj1,Ei,Ej);
					if(Ck1!=NULL && Ck1->valueNo!=-1){
						Ck2= specialIntersection(Ci2,Cj2,Ei,Ej);
					}
					
					if(Ck1!=NULL && Ck2!=NULL){
						//  add value expression to Ck with operand1 as value no from Ck1 and operand2 as value no from Ck2 and op from Ci
						Ck->valueExp = createValueExp(Ck1->valueNo,Ck2->valueNo,Ci->valueExp->op);
						// set flag for Ck is not NULL
						flag=1;
					}
					else{
						Ck->valueExp=NULL;
					}					
				}
			}
			else{

				Ck->valueExp=NULL;
			}
			// flag is 1 then Ck is not empty
			if(flag==1){
				
				// ci and cj have different value no
				if(Ci->valueNo!=Cj->valueNo){
					// check in table this pair got value no
					auto res = intersectionTable.find(std::make_pair(Ci->valueNo,Cj->valueNo));
					if(res!=intersectionTable.end()){
						// found in table and Ck will have same value no
						//errs()<<"\n"<<res->first.first<<" "<<res->first.second<<" "<<res->second<<"\n";
						Ck->valueNo=res->second;
						
					}
					else{
					// not found in table so we will add value no corresponding this pair
					intersectionTable[std::make_pair(Ci->valueNo,Cj->valueNo)]= GlobalValueNo;
					Ck->valueNo=GlobalValueNo++;
					}
				}
			}
			else{
				// Ck is empty so we will assign it NULL and will free it's allocated memory
				delete Ck;
				Ck=NULL;
			}
			return Ck;		
		}
			
	
	
	
	
	
		// Performs confluence of two expression pools	
		DenseMap<int ,equivalenceClassStruct * > confluence (DenseMap<int ,equivalenceClassStruct * >& Ei, DenseMap<int ,equivalenceClassStruct * >& Ej){
			DenseMap<int ,equivalenceClassStruct * > Ek;	
			for(auto pair1: Ei){
				for(auto pair2: Ej){
					equivalenceClassStruct * Ck=NULL,*Ci,*Cj;
					// get Ci class from Ei
					Ci=pair1.second;
					// get Cj class from Ej
					Cj=pair2.second;
					// do special intersection of Ci and Cj
					Ck= specialIntersection(Ci,Cj,Ei,Ej);
					
					if(Ck!=NULL ){
						// add Ck to Ek
						Ek[Ck->valueNo]=Ck;
					}
				}
			}
			deleteSingleton(Ek);
			return Ek;
		}
		
	
	
	
	
	
	
		
		// computes expression pool at confluence point using confluence function(confluence of two expression pools)
		DenseMap<int ,equivalenceClassStruct * > computeConfluence(Instruction& Inst){	
			// get basic block of Inst
			// acess all its predecessor blocks using them access last Instrution of predecessor blocks
			// take confluence of all predecessors output point Expression Pool 
			int i=0;
			BasicBlock * BB = Inst.getParent();
			DenseMap<int ,equivalenceClassStruct * > tempPool;
			// tempInit specifies that Out point have "T" or some thing else 
			bool tempInit;
			// table to keep resultant value no of two class
			for (pred_iterator p = pred_begin(BB), E = pred_end(BB); p != E; ++p){
				BasicBlock *predB = *p;
				// access last instruction of pred Basic Block
				Instruction& predInst= predB->back();
				
				if(i==0){
					// handle first predcessor
					//errs()<<predInst.getParent()->getName()<<"\n";
					tempPool= EOUT[&predInst];
					tempInit= OutInit[&predInst];
					i++;				
				}
				else{
					// handle other than first predecessor case
					if(tempInit==1){
						
						tempPool= EOUT[&predInst];
					}
					else if(tempInit==0 && OutInit[&predInst]==0){
						// do confluence only when both have not T at out point
						tempPool = confluence(tempPool,EOUT[&predInst]);
						
					}
					tempInit&=OutInit[&predInst];
				}	
			}
			return tempPool;
		}
		
		
		
		
		
		
		
	
		//Compares valuen expression, it will return 1 if value expressions are equivalent
		bool compareValueExp(valueExpressionStruct* exp1,valueExpressionStruct* exp2,DenseMap<int ,equivalenceClassStruct * >& oldEout,DenseMap<int ,equivalenceClassStruct * >& newEout){
			// both value expressions are emty
			if(exp1==NULL && exp2==NULL)
				return 1;
			else{
				// only one is empty or operator is different
				if((exp1==NULL && exp2!=NULL) || (exp1!=NULL && exp2==NULL) || (exp1->op!=exp2->op)){
					return 0;
				}
				// both corresponding operands are same (if it detects wrong equivalence it will be taken care automatically in comparing all pools)
				if(exp1->operand1==exp2->operand1 && exp1->operand2==exp2->operand2)
					return 1;
				else{
					// not same value expressions( different corresponding operands)
					if(compareClass(oldEout[exp1->operand1],newEout[exp2->operand1],oldEout,newEout) && compareClass(oldEout[exp1->operand2],newEout[exp2->operand2],oldEout,newEout))
						return 1;
					else
						return 0;
				}
			}
		}
		
		
		
		
		
		
		
		
		//Compares two class equivalence information , it will return 1 when two classes are equivalent
		bool compareClass(equivalenceClassStruct * c1, equivalenceClassStruct * c2,DenseMap<int ,equivalenceClassStruct * >& oldEout,DenseMap<int ,equivalenceClassStruct * >& newEout){
			// size is differnet of constVarSet or only one value epxression is empty
			if(c1->constVarSet.size()!=c2->constVarSet.size() || (c1->valueExp==NULL && c2->valueExp!=NULL) || (c1->valueExp!=NULL && c2->valueExp==NULL))
				return 0;
			else{
				// constVarSet are same in two classes
				if(c1->constVarSet==c2->constVarSet){
					// now compare value expressions are equivalent
					if(c1->valueExp==NULL || compareValueExp(c1->valueExp,c2->valueExp,oldEout,newEout))
						return 1;
					else
						return 0;
				}
				else{
					return 0;
				}
			}
		}
		
		
		
		
		
		
		
		

		// Compares one class of oldEout to all classes of newEout exhaustively to find equivalent class
		inline int compareExpHelper(struct equivalenceClassStruct* oldClass,DenseMap<int ,equivalenceClassStruct * >& oldEout,DenseMap<int ,equivalenceClassStruct * >& newEout){
			// check constVarSet is not empty
			if(!oldClass->constVarSet.empty()){
				// get one element from constVarSet of oldClass and find it's value no in newEout
				Value* var = oldClass->constVarSet.back();
				int valNo = findValueNo(var,newEout);
				// valNo found of last element
				if(valNo!=-1){
					// here compare two classes they must be equivalent
					if(!compareClass(oldClass,newEout[valNo],oldEout,newEout))
						return 1;
				}
				else{
					return 1;
				}
			}
			else{
				// constVarSet is NULL here so we will compare value expressions
				if(oldClass->valueExp!=NULL){
					int flag=0;  // flag 1, shows equivalence class found same
					for(auto newPair: newEout){
						struct equivalenceClassStruct* newClass= newPair.second;
						if(newClass->constVarSet.empty() && newClass->valueExp!=NULL){
							if(compareValueExp(oldClass->valueExp,newClass->valueExp,oldEout,newEout))
								flag=1;
						}
					}
					if(flag==0)
						return 1; 
				}
			}
			
			return 0;
		}
	
	
	
	
	
			
		//Compares two expression pools, returns 1 if newEout changed from oldEout
		bool compareExpPools(DenseMap<int ,equivalenceClassStruct * >& oldEout,DenseMap<int ,equivalenceClassStruct * >& newEout){
			if(oldEout.size()!=newEout.size()){
				// size is different so old must be changed in new pool
				return 1;
			}
			else{
				// two pools have same size so we need to check change in equivalence
				// acess each class and find it's equivalent class in newEout
				for(auto oldPair : oldEout){
					// get class from pair
					struct equivalenceClassStruct* oldClass= oldPair.second;
					// find class in newEout with same value no as of oldClass
					if(newEout.find(oldPair.first) != newEout.end()){
						// found
						if(!compareClass(oldClass,newEout[oldPair.first],oldEout,newEout)){
							if(compareExpHelper(oldClass,oldEout,newEout))
								return 1;
						}
					}
					// check value no of oldClass is different in newEout pool
					else{
						if(compareExpHelper(oldClass,oldEout,newEout))
								return 1;
					}
					
				}
			}			
			return 0;
		}

	
		
		// deconstructor		
		~SGVN()
    		{
			//errs()<<"\n Total no of redundant expression are: "<<totalNoOfRedundancy<<"\n";
		}
		
	
	
	
	
		virtual bool runOnFunction(Function& F)
		{
			//errs()<<F.getName();
			// Initialize output points of each node wiht T i.e. 1
			for(Instruction& Inst: instructions(&F)){
				OutInit[&Inst]=1;
			}
			
			// prev Instruction Keeps single predecessor Instruction
			Instruction * prevInst=NULL;
			
			
			// changeOut used to specify that out point pool is changed of at least one node
			bool changedOut=1;
			int round=0;
			
			while(changedOut){
			
				changedOut=0;
				
				for (Instruction& Inst:instructions(&F)){
					// compute EINn
					if(&(Inst.getParent()->front()) == &Inst){
						// begining of basic block compute EIN using confluence
						EIN[&Inst]= computeConfluence(Inst);//do confluence of predecessor instructions output point pool
					}
					else{
						// not a beginning of basic block (single predcessor)
						EIN[&Inst]=EOUT[prevInst];
					}	
					//save old expression pool at out point of Instruction to oldEout
					DenseMap<int ,equivalenceClassStruct * > oldEout= EOUT[&Inst];
					//compute EOUTn (new) using tranfer function 
					EOUT[&Inst]=transferFunction(Inst,oldEout);
					// compare old and new expression pool at out point of instruction
					changedOut |= compareExpPools(oldEout,EOUT[&Inst]);
					prevInst = &Inst;
				}
				
				
				/*errs()<<"iteration "<<round+1<<" :\n";
				//print Expression pools here
				for(Instruction &Inst : instructions(&F)){
					//get last instruction from the class
					//errs()<<&((Inst.getParent())->back())<<" "<<&Inst;
					if(&(Inst.getParent()->front()) == &Inst)
						errs()<<Inst.getParent()->getName()<<"\n";
					//if(Inst.getParent()->getTerminator()== &Inst){
					//check end of basic block
					errs()<<Inst<<"\n";
					errs()<<"Expression pool at input point\n";
					printExpressionPool(EIN[&Inst]); 
					errs()<<"\n";
					errs()<<"Expression pool at Output point\n";
					printExpressionPool(EOUT[&Inst]);
					errs()<<"\n\n\n";
				}
				errs()<<"\n\n";*/
				
				round++;
			}
			
			
			
			//detect redundant expressions
			// keeps all redundant expressions in redundantExpSet
			SetVector<Instruction*> redundantExpSet;
			for(Instruction& Inst: instructions(&F)){
				if(Inst.getNumOperands()==2){
					const char op= *(getOperator(Inst.getOpcode()));			
					if(op!='$'){
						// e will contain value expression
						valueExpressionStruct* e= new valueExpressionStruct();
						// get Operator from instruction
						e->op=op; 
						// find value no of operand1
						e->operand1= findValueNo(Inst.getOperand(0),EIN[&Inst]);
						//handle constant operand
						if(e->operand1==-1){
							continue;
						
						}
						//find value no of operand2
						e->operand2= findValueNo(Inst.getOperand(1),EIN[&Inst]);
						//handle constant operand
						if(e->operand2==-1){
							continue;
						}
						//find value no of e and add x to corresponding class of value no
						int valueNo=findValueNoOfExp(e,EIN[&Inst]);	
						if(valueNo!=-1){
							// add redundant expression
							redundantExpSet.insert(&Inst);
					
						}
					}
				}
			}
			
				
			// print redundant Expressions here
			totalNoOfRedundancy+=redundantExpSet.size();
			errs()<<"\nTotal number of redundant expressions found is: "<<redundantExpSet.size()<<"\n";
			
			int i=1;
			for(Instruction* Inst : redundantExpSet){
				errs()<<i++<<") Instruction:"<<"\t"<<*Inst<<"\n"<<"   Expression:    ";	
				printExpression(*Inst);
				errs()<<"\n\n";
			}
			
			
			//clear redundant expression set
			redundantExpSet.clear();
			intersectionTable.clear();
			OutInit.clear();
			//errs()<<"no of iterations: "<<round<<"\n\n";
			
			return 0;
		}
		
		
		void getAnalysisUsage(AnalysisUsage &AU) const override {
			AU.setPreservesCFG();
		     
		}
	};
}

char SGVN::ID = 0;
static RegisterPass<SGVN> X("sgvn","A Simple Algorithm for Global Value Numbering Pass",false,false);
