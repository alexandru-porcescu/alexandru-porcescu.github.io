#!/bin/sh
###########################
cd /var/www/faculty.dev/blog-tools.dev/blog.dev
# add all added/modified files
git add --all .
# commit changes
git commit -am "[feature] added blog post `date +%Y-%m-%d:%H:%M:%S`"

git checkout gh-pages
git pull origin gh-pages
git push origin gh-pages

# git pull origin master
# git push origin master
###########################