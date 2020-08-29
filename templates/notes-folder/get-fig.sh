#!/bin/bash

# add a figure to this md proj
# and then 

figpath=$1
figname=$2
figfolder="notes/figures"

mv "$figpath" "$figfolder/$figname"
echo "$figfolder/$figname" | pbcopy
