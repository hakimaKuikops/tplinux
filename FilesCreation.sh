#!/bin/bash


while read p; do
   ./creationScriptcopy.sh ${p}
done <vars.txt
