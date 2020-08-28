#!/bin/bash

# add a figure to this md proj

figpath=$1
figname=$2
figfolder="notes/figures"

mv "$figpath" "$figfolder/$figname"
echo "$figfolder/$figname" | pbcopy
