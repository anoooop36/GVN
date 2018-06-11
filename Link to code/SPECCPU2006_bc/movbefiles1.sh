
OLDIFS=$IFS
IFS=$(echo -en "\n\b")
for i in $(find . -print | grep -i "[.]bc");
do
bc="${i:2}"
opt -instnamer $bc -o $bc
opt -load ../llvm-3.6.2.src/Release+Asserts/lib/jack.so -shutup1 <$bc> /dev/null
done;

