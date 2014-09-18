#!/bin/sh

cd $1

git add --all
git commit -am $2
git tag publish/$2
git push origin master:daily/$2
git push origin publish/$2:publish/$2

echo 'publish done...';