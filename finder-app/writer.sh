#!/bin/bash
writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
	echo "usage : $0 <writefilepath> <writestring> "
	exit 1
fi

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
	echo "Unable to create directory $dirpath"
	exit 1
fi

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
	echo "Error in writing string $writestr or file couldn't be created"
fi

echo "File successfully created $writefile"
