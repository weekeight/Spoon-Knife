#!/bin/sh

cd $1

git add --all

if [ $# -eq 3 ];then
	echo '333'
	git commit -am $3
	
else
	echo '222'
	git commit -am $2
fi

git tag publish/$2
git push origin master:daily/$2
git push origin publish/$2:publish/$2

echo 'publish done...';