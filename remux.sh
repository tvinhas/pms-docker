#!/bin/bash
if [ $# -lt 1 ]
then
    echo "Usage: `basename $0` <filename> (must be a mkv file)"
        exit 1
fi

#vars
file=$1
outmkv="${file%.*}.mkv"
logfile="/tmp/remux.log"

if ffmpeg -fflags +genpts -i "$file" -c:v copy -c:a copy -preset superfast -sn -movflags faststart "$outmkv"  &>> $logfile
then
  echo "Success, removing $file" &>> $logfile
  rm -fv "$file"
  chown plex: "$outmkv"
else
  echo "Failure, exit status $?" &>> $logfile
  rm -fv "$outmkv"
fi
