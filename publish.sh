#!/bin/sh
###########################
cd /var/www/blog-tools.dev/blog.dev
# add all added/modified files

git checkout gh-pages

git add --all .
# commit changes
git commit -am "[feature] added blog post `date +%Y-%m-%d:%H:%M`"

git pull origin gh-pages
git push origin gh-pages

git checkout master
git merge gh-pages
git pull origin master
git push origin master

###########################