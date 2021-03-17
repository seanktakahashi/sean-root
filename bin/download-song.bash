#!/bin/bash
#
# relies on $MUSIC being set to where music should be saved

if [ $# -eq 0 ]
  then
    echo "Usage: download-song.bash [url] [folder?]"
    exit 1
fi

function build_month_dir()
{
  echo $(date +%Y-%b)
}

function get_music_dir()
{
  local music_dir="$MUSIC"
  if [ -z "$1" ]
  then
    music_dir="$MUSIC/$(build_month_dir)"
  elif [ $1 = "anime" ]
  then
    music_dir="$MUSIC/anime"
  elif [ $1 = "kpop" ]
  then
    music_dir="$MUSIC/kpop"
  elif [ $1 = "lofi" ]
  then
    music_dir="$MUSIC/lofi"
  elif [ $1 = "american" ]
  then
    music_dir="$MUSIC/american"
  elif [ $1 = "hype" ]
  then
    music_dir="$MUSIC/hype"
  fi
  echo "$music_dir"
}

music_dir=$(get_music_dir $2)
mkdir -p $music_dir
# continue on partially downloaded files
# ignore failures (continue even if a song on playlist doesn't download)
FLAGS="-ci"
# Choose best audio of either format
# Write thumbnails as well
ARGS=("-f 'bestaudio[ext=m4a]/bestaudio[ext=webm]' --write-thumbnail")
# Save files to Music
OUT=("-o '$music_dir/%(title)s.%(ext)s'")

CMD="youtube-dl $FLAGS $ARGS $OUT '$1'"
echo "-------DOWNLOAD SONG--------"
echo "----------COMMAND-----------"
echo $CMD
echo "----------STARTING----------"
eval "$CMD"
