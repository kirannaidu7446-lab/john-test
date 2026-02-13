#!/bin/bash

source_dir=/home/ec2-user/john-folder
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [-d $source_dir]
then
    echo -e "$source_dir directory  $G exists $N"
else
    echo -e "$source_dir doesnt $R exists $N"
    exit 1
fi

Files= $(find $source_dir -name "*.log" -mtime +14)
echo "$files"

while IFS = read  -r line 
do 
  echo "deleting line:$line"
done <<< $files