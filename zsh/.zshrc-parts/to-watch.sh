##################
#### TO WATCH ####
##################
hello () {
  echo "hi there"
  echo "here are your implemented functions:
    hello
    watch [movie] [/anime/marilu/again]
    watched [movie-index]
  "
}

export WATCH="/Users/sean/Desktop/to-watch/to-watch.txt"
export WATCH_ANIME="/Users/sean/Desktop/to-watch/to-watch-anime.txt"
export WATCH_MARILU="/Users/sean/Desktop/to-watch/to-watch-marilu.txt"
export WATCH_AGAIN="/Users/sean/Desktop/to-watch/to-watch-again.txt"
watch() {
  # local lines="$(wc -l < $WATCH)"
  # echo $lines. $1 >> $WATCH
  if [ -z "$2" ]
  then
    echo $1 >> $WATCH
    echo "Running List o' Shows"
    cat -n $WATCH
  elif [ $2 = "anime" ]
  then
    echo $1 >> $WATCH_ANIME
    echo "Running List o' Anime Shows"
    cat -n $WATCH_ANIME
  elif [ $2 = "marilu" ]
  then
    echo $1 >> $WATCH_MARILU
    echo "Running List o' Shows to watch w/ Mlu"
    cat -n $WATCH_MARILU
  elif [ $2 = "again" ]
  then
    echo $1 >> $WATCH_AGAIN
    echo "Running List o' Shows to watch again"
    cat -n $WATCH_AGAIN
  else
    echo "Something went wrong, check documentation"
  fi
}

watched() {
  if [ -z "$2" ]
  then
    sed -i -e $1d $WATCH
    echo "Updated List o' Shows"
    cat -n $WATCH
  elif [ $2 = "anime" ]
  then
    sed -i -e $1d $WATCH_ANIME
    echo "Updated List o' Shows"
    cat -n $WATCH_ANIME
  elif [ $2 = "marilu" ]
  then
    sed -i -e $1d $WATCH_MARILU
    echo "Updated List o' Shows"
    cat -n $WATCH_MARILU
  elif [ $2 = "again" ]
  then
    sed -i -e $1d $WATCH_AGAIN
    echo "Updated List o' Shows"
    cat -n $WATCH_AGAIN
  else
    echo "Something went wrong, check documentation"
  fi
}
