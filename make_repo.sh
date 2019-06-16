echo -p "Branch name: " branch
echo -p "Url: " url

git remote add $branch $url
git branch $branch
git checkout $branch
git add .
git add -u
git commit -m $branch
git push url $branch