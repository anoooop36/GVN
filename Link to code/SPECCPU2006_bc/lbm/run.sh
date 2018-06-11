
OLDIFS=$IFS
IFS=$(echo -en "\n\b")
for i in *.bc; do
echo "$i"
#echo $i >> outputfile3
opt -load  /home/anoop/LLVM/build/lib/LLVMHello.so -sgvn <$i> /dev/null 
echo "\n\n"
#echo "--------------------------------------------------------------------------------------------------------------------------------------- \n">>outputfile3
done
