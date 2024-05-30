#!/bin/bash
mkdir -p root
awk '!seen[$1]++{print $1}' vars.txt > prefix.txt
while read p; do

    for f in $p/*
    do 
        #remove the last "-"
        new=$(echo $f |sed 's/\(.*\)-/\1/')
        echo $new
        # chnage all "-" to "/"
        newwithdir=$(echo $new| tr  '-' '/')
        echo $newwithdir
        path=$(echo  "${newwithdir%/*}")
        echo "path is"
        echo $path
        #create the directory where to move the files
        mkdir -p  root/$path
        #move the files
        mv $f root/$newwithdir.dat

    done
done <prefix.txt
