#! /bin/bash

Time=$(date +"%T")

File="lines.txt"

Lines=$(cat $File)

for Line in $Lines
do
echo "$Time $Line"
done > test.log

git add .
git commit -m "files updated at $Time"
git push
