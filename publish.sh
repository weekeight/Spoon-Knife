#!/bin/sh

cd $1

echo $3
if $3
then
	echo '333'
	git add --all
	git commit -am $3
	git tag publish/$2
	git push origin master:daily/$2
	git push origin publish/$2:publish/$2
else
	echo '222'
	git add --all
	git commit -am $2
	git tag publish/$2
	git push origin master:daily/$2
	git push origin publish/$2:publish/$2
fi

echo 'publish done...';