
OLDIFS=$IFS
IFS=$(echo -en "\n\b")
for i in $(find . -print | grep -i "[.]bc");
do
bc="${i:2}"
echo $bc >> outputfile
opt -load ../../llvm-3.6.2.src/Release+Asserts/lib/SGVN.so -SGVN <$bc> /dev/null
echo "--------------------------------------------------------------------------------------------------------------------------------------- \n">>outputfile
done;

