# publish_gitbook.sh
# This script generates GitHub pages files for this book, then 
# pushes the master-branch files to the repository's "origin" 
# remote.

# create the _book folder and build the static site within it
gitbook build

# copy the static site files into the current directory
cp -R _book/* .

# add any new files to the repository index
git add .

# add all changed files and commit
git commit -m "Update static website files for GitHub Pages"

# push to the origin remote
git push origin master
