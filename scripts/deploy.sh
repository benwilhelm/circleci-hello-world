#! /bin/bash

git add docs

gitName=`git config user.name`
gitEmail=`git config user.email`

if [ "$gitName" = "" ]
then
  echo "setting git user.name to 'CI'"
  git config user.name = "CI"
fi

if [ "$gitEmail" = "" ]
then
  echo "setting git user.email to 'ben+ci@doublebeamdesign.com'"
  git config user.email = "ben+ci@doublebeamdesign.com"
fi

git commit -m "Automated Deploy"
git push -u origin master
