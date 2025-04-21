#!/bin/bash
#
# relies on $MUSIC being set to where music should be saved


set -e # exit entire script if any function calls `exit`

if [ -z $MUSIC ]
then
  echo "You need to set \$MUSIC=/path/to/music"
  exit 1
fi

if [ $# -eq 0 ] || [ $1 = "--help" ]; then
  echo "Usage:   download-song.bash [url] [folder?]"
  echo "Folders: kpop, jpop, lofi, chill, american, hype"
  exit 1
fi

function build_month_dir()
{
  month=$(date +%m)

  if [ "$month" -gt "9" ]; then
    echo $(date +%Y-fall)
  elif [ "$month" -gt "6" ]; then
    echo $(date +%Y-summer)
  elif [ "$month" -gt "3" ]; then
    echo $(date +%Y-spring)
  elif [ "$month" -gt "0" ]; then
    echo $(date +%Y-winter)
  fi
}

function get_music_dir()
{
  local music_dir;
  if [ $1 = "kpop" ]; then
    music_dir="kpop/$(build_month_dir)"
  elif [ $1 = "jpop" ]; then
    music_dir="jpop/$(build_month_dir)"
  elif [ $1 = "lofi" ]; then
    music_dir="lofi/$(build_month_dir)"
  elif [ $1 = "chill" ]; then
    music_dir="chill/$(build_month_dir)"
  elif [ $1 = "american" ]; then
    music_dir="american/$(build_month_dir)"
  elif [ $1 = "hype" ]; then
    music_dir="hype/$(build_month_dir)"
  elif [ $1 = "spanish" ]; then
    music_dir="spanish/$(build_month_dir)"
  else
    >&2 echo "Unknown music dir: $1"
    >&2 echo "Supported dirs: [kpop, jpop, lofi, chill, american, hype, spanish]"
    exit 1
  fi
  echo "$music_dir"
}

function main()
{
  music_dir=$(get_music_dir $2)
  local abs_music_dir=$MUSIC/$music_dir
  mkdir -p $abs_music_dir

  # continue on partially downloaded files
  # ignore failures (continue even if a song on playlist doesn't download)
  FLAGS="-ci"
  # Choose best audio of either format
  # Write thumbnails as well
  ARGS=("-f 'bestaudio[ext=m4a]/bestaudio[ext=webm]' --write-thumbnail")
  # METADATA=("--parse-metadata 'title:%(artist)s - %(title)s'")
  METADATA=("--parse-metadata 'description:%(artist)s - %(title)s' --embed-metadata")
  # METADATA=("--parse-metadata 'album:test' --embed-metadata")
  # Save files to Music
  OUT=("-o '$abs_music_dir/%(title)s.%(ext)s'")

  CMD="yt-dlp $FLAGS $ARGS $METADATA $OUT '$1'"
  echo "-------DOWNLOAD SONG--------"
  echo "----------COMMAND-----------"
  echo $CMD
  echo ""
  echo "----------STARTING----------"
  eval "$CMD"
}

main $1 $2
