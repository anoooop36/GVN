
OLDIFS=$IFS
IFS=$(echo -en "\n\b")
for i in *.bc; do
echo "$i"
#echo $i >> outputfile3
opt -load  /home/anoop/LLVM/build/lib/LLVMHello.so -avExp <$i> /dev/null 
#echo "--------------------------------------------------------------------------------------------------------------------------------------- \n">>outputfile3
done
