#!/bin/bash

#read -p "Enter the number of files to be created : " N

#read -p "Enter repo name" REPONAME

#read -p "Enter th eprefix of files " PREFIX

#read -p "Enter the duration between th ecreation of two files: " M



mkdir -p $1
cd $1

for  ((i=1; i<=$4; i++))
do
   touch $2-$(date +"%Y-%m-%d-%H-%M-%S-%2N")
   sleep $3
done
