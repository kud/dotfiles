#! /usr/bin/env zsh

branches=$(git branch --merged|grep -v 'master'|sed "s/ //g")

echo "List of merged branches:"
echo ""
echo "> ${branches}"
echo ""

read \?"Press any key to continue the deletion… or ctrl+c to stop."

git branch -d $branches
