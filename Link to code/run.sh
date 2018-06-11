#run on /llvm/code path
PATH=/usr/clang/bin/:$PATH
rm ./hello.ll
rm ./hello1.ll
rm ./hello2.ll


clang -emit-llvm -S hello.cpp -o hello.ll
#llvm-dis hello.bc
#opt -dot-cfg -o hello.bc hello.bc
#dot -Tfig -O cfg._Z4multv.dot
#opt -load /home/anoop/LLVM/build/lib/LLVMHello.so -help | grep opcode
opt -instnamer -S < hello.ll > ./hello1.ll
#opt -dot-cfg -o hello1.ll hello1.ll

#opt -load /home/anoop/LLVM/build/lib/LLVMHello.so -newCSE -S < hello1.ll
#opt -load /home/anoop/LLVM/build/lib/LLVMHello.so -avExp -S < hello1.ll > /dev/null
opt -dot-cfg -o hello1.ll hello1.ll
opt -load /home/anoop/LLVM/build/lib/LLVMHello.so -sgvn -time-passes < hello1.ll > /dev/null
#lli hello2.ll
