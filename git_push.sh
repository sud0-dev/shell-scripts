read -p "Enter readme: " msg
echo "$msg" >> README.md
git init
git add .
git commit -m "First commit"
read -p "Url: " url
git remote add origin $url
git remote -v
read -p "Branch Name: " branchName
git push origin master $branchName