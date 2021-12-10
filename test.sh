#! /bin/bash

Time=$(date +"%T")

File="lines.txt"

Message=$Time

Lines=$(cat $File)

for Line in $Lines
do 
    echo "$Time $Line" > test.log
done


git add .
git commit -m "files updated at $Time"
git push
