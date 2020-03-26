rm -rf docs
hugo -d docs
git add .
git commit -m $1
git push 

echo "Deployed to master"
