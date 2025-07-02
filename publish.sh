rm -r public/* &&
git pull &&
git add .
git commit -m "$(date)"
git push origin main
hugo &&
cd public
git add .
git commit -m "$1"
git push origin main
