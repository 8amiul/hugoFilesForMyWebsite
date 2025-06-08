rm -r public/* &&
hugo &&
cd public
git add .
git commit -m "$1"
git push
