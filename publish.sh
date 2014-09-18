#!/bin/sh

cd $1

if $3
then
	git add --all
	git commit -am $3
	git tag publish/$2
	git push origin master:daily/$2
	git push origin publish/$2:publish/$2
else
	git add --all
	git commit -am $2
	git tag publish/$2
	git push origin master:daily/$2
	git push origin publish/$2:publish/$2
fi

echo 'publish done...';