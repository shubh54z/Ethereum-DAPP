rsync -r src/ docs/
rsync build/contracts/* docs/

git add .
git commit -m "Compiles ass for deployment on pages"
git push -u origin2 master