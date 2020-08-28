#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No youtube URL supplied"
    exit 1
fi

echo "Downloading contents of playlist at $1"

# continue on partially downloaded files
# ignore failures (continue even if a song on playlist doesn't download)
FLAGS="-ci"
# Choose best audio of either format
# Write thumbnails as well
ARGS=("-f 'bestaudio[ext=m4a]/bestaudio[ext=webm]' --write-thumbnail")
# Save files to Music
OUT=("-o '~/Music/sean-music/%(title)s.%(ext)s'")

CMD="youtube-dl $FLAGS $ARGS $OUT '$1'"
echo $CMD
echo "-----\t-----\tSTARTING\t-----\t-----"
eval "$CMD"
