#!/bin/bash
INPUT=$1
# INPUT=$1
# OUTPUT=$2
echo "this is " $1
cat /home/hosts/sample.txt

pushd /home/hosts/

mp4=`find *.mp4 `

if [ $? = 0 ]; then
    echo "-----------------"
    echo $mp4
    echo "-----------------"

    ffmpeg -y -i $mp4 -ab 256k output.mp3
    ls *.mp3
else
    echo "NO mp4"
fi

popd

# ffmpeg -i "$1" -acodec libmp3lame -ab 256k "$2" 
