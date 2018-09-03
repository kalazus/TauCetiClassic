#!/bin/sh
echo "Running Map Merger..."

command="java -jar tools/dmmtool/JTGMerge.jar"

$command merge $1 $2 $3

if [ $? -ne 0 ]; then
    echo "Unable to automatically resolve map conflicts, please merge manually."
    exit 1
fi

$command clean $1 $2

echo "Map Merger successfully finished."
exit 0
