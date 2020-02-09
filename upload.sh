cd out/target/product/X00T
files=(*.zip)
total=${#files[@]}
i=0
for f in "${files[@]}"; do
	i=$(( i + 1 ))
	echo $i "$f"
done
read -p "Select File to upload: " num
echo -e "1. Sourceforge \n2. Google Drive"
read -p "Select Drive: " drive
case $drive in
1) scp ${files[num-1]} sudodev@@frs.sourceforge.net:/home/pfs/project/extendedui/X00T;;
2) gdrive upload ${files[num-1]};;
*) echo "Wrong Combination of choices";;
esac
