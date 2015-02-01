# hugo

# Add changes to git.
git checkout master
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
	then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

git subtree push --prefix=public https://github.com/edthedev/edward.delaporte.us.git gh-pages
