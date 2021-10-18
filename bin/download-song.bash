#!/bin/bash
#
# relies on $MUSIC being set to where music should be saved

if [ -z $MUSIC ]
then
  echo "You need to set \$MUSIC=/path/to/music"
  exit 1
fi

if [ $# -eq 0 ] || [ $1 = "--help" ]; then
  echo "Usage:   download-song.bash [url] [folder?]"
  echo "Folders: anime, kpop, jpop, lofi, chill, american, hype"
  exit 1
fi

function build_month_dir()
{
  echo $(date +%Y-%b)
}

function get_music_dir()
{
  local music_dir="$MUSIC"
  if [ -z "$1" ]; then
    music_dir="$MUSIC/$(build_month_dir)"
  elif [ $1 = "anime" ]; then
    music_dir="$MUSIC/anime/$(build_month_dir)"
  elif [ $1 = "kpop" ]; then
    music_dir="$MUSIC/kpop/$(build_month_dir)"
  elif [ $1 = "jpop" ]; then
    music_dir="$MUSIC/jpop/$(build_month_dir)"
  elif [ $1 = "lofi" ]; then
    music_dir="$MUSIC/lofi/$(build_month_dir)"
  elif [ $1 = "chill" ]; then
    music_dir="$MUSIC/chill/$(build_month_dir)"
  elif [ $1 = "american" ]; then
    music_dir="$MUSIC/american/$(build_month_dir)"
  elif [ $1 = "hype" ]; then
    music_dir="$MUSIC/hype/$(build_month_dir)"
  fi
  echo "$music_dir"
}

function main()
{
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
  echo ""
  echo "----------STARTING----------"
  eval "$CMD"
}

main $1 $2
