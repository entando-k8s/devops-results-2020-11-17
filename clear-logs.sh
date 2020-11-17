cd ../
new_repo_dir=lll
mkdir ${new_repo_dir}
cd ${new_repo_dir}
git init
git checkout -b logs
cd ../devops-results
git checkout origin/logs --track
find ./ -type d -name "master" -exec mkdir -p ../${new_repo_dir}/{} \;
find ./ -type d -name "master" -exec sh -c "ls -td {}/* | awk 'NR==1'|xargs -I@  cp -f @ ../${new_repo_dir}/@" \;
cd ${new_repo_dir}
git add -A
git commit -m "First commit after trim"
git checkout -b gh-pages
cd ../devops-results
git checkout origin/gh-pages --track

