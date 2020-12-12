#! /bin/bash
if [ $# -eq 0 ]
  then
    echo "You must specify the pen to remove"
    exit 1
fi
diskFile=$1.img
diskDir=$1
umount $diskDir
rmdir $diskDir
rm $diskFile