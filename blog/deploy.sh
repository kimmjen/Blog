#!/usr/bin/env sh

# abort on errors
set -e

# build commands
npm run blog:build

# navigate into the build output directory
cd .vitepress/dist

git init
git add -A
git commit -m "deploy with vuepress script"
git push -f https://github.com/kimmjen/Blog.git master:gh-pages

cd -