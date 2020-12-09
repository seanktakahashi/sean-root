#!/bin/bash
#
# relies on $MUSIC being set to where music should be saved

echo $0
echo $1
echo $2
# if [ $# -eq 0 ]
#   then
#     echo "No youtube URL supplied"
#     exit 1
# fi

echo "Downloading contents of playlist at $4"
printenv

function get_music_dir()
{
  local music_dir=''
  if [ -z "$1" ]
  then
    music_dir="$MUSIC/my-music"
  elif [ $1 = "anime" ]
  then
    music_dir="$MUSIC/anime-music"
  elif [ $1 = "kpop" ]
  then
    music_dir="$MUSIC/kpop"
  elif [ $1 = "lofi" ]
  then
    music_dir="$MUSIC/lofi"
  fi
  echo "$music_dir"
}

music_dir=$(get_music_dir $2)
# continue on partially downloaded files
# ignore failures (continue even if a song on playlist doesn't download)
FLAGS="-ci"
# Choose best audio of either format
# Write thumbnails as well
ARGS=("-f 'bestaudio[ext=m4a]/bestaudio[ext=webm]' --write-thumbnail")
# Save files to Music
OUT=("-o '$mustic_path/%(title)s.%(ext)s'")

CMD="youtube-dl $FLAGS $ARGS $OUT '$1'"
echo "----------------------------"
echo $CMD
echo "----------STARTING----------"
eval "$CMD"
