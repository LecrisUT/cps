#!/bin/sh -e

cd site
git diff-index --quiet HEAD -- && exit 0

git add .
git commit -m 'Update'
git push origin gh-pages
