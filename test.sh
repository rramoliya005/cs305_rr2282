#! /bin/bash

Time=$(date +"%T")

File="/home/rr2282/cs305_rr2282/lines.txt"

Lines=$(cat $File)

for Line in $Lines
do
echo "$Time $Line"
done > /home/rr2282/cs305_rr2282/test.log


cd /home/rr2282/cs305_rr2282/
git add .
git commit -m "files updated at $Time"
git push
