#!/bin/sh
###########################
cd /var/www/faculty.dev/blog-tools.dev/blog.dev
# add all added/modified files
git add --all .
# commit changes
git commit -am "[feature] added blog post `date`"
git pull origin master
# push to git remote repository
git push origin master
###########################