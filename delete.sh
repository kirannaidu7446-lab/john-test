#!/bin/bash

source_dir=/home/ec2-user/john-folder
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [-d $source_dir]
then
    echo "$source_dir directory  $G exists $N"
else
    echo "$source_dir doesnt $R exists $N"
    exit 1
fi

Files= $(find $source_dir -name "*.log" -mtime +14)
echo "$files"