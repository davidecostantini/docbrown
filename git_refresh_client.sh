#!/bin/sh
if [ -z "$1" ]; then
	DESC="Minor changes to files not commented"
else
	DESC=$1
fi

branch_name=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

echo "Do you wish to push on branch $branch_name (y/n)?"
read answ
if [ "$answ" != "y" ]; then
	echo "Exiting"
	exit
fi

git add . 

git commit -m "$DESC"
git push origin $branch_name
echo "DONE! ;-)"
