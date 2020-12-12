#! /bin/bash
if [ $# -eq 0 ]
  then
    echo "You must specify the pen to create"
    exit 1
fi
diskFile=$1.img
diskDir=$1
touch $diskFile
mkdir $diskDir
truncate -s 1G $diskFile
mke2fs -t ext4 -F $diskFile
mount $diskFile $diskDir
cp ./template/* ./$diskDir/