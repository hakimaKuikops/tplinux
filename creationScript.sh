#!/bin/bash

read -p "Enter the number of files to be created : " N

read -p "Enter repo name" REPONAME

read -p "Enter th eprefix of files " PREFIX

read -p "Enter the duration between th ecreation of two files: " M



mkdir $REPONAME
cd $REPONAME

for  ((i=1; i<=$N; i++))
do
   touch $PREFIX-$(date +"%Y-%m-%d-%H-%M-%S-%2N")
   sleep $M
done
