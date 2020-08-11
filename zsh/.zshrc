##################
#### GREETING ####
##################
# generate random eye
RANGE=6
CHOICE=$RANDOM
let "CHOICE %= $RANGE" # mod by range
case $CHOICE in
  0)
    EYE="'"
    ;;
  1)
    EYE="^"
    ;;
  2)
    EYE='"'
    ;;
  3)
    EYE="*"
    ;;
  4)
    EYE="\`"
    ;;
  5)
    EYE="-"
    ;;
  *)
    echo 'something went wrong in my random func'
    ;;
esac

echo "sean's cat ¯\_(ツ)_/¯
      \    /\\
       )  ( $EYE)
      (  /  )
       \(__)|
"
#################
#### OPTIONS ####
#################
setopt NO_CASE_GLOB # expansion of wild-card characters such as * and ?
setopt AUTO_CD # if only a path is specified, assume proceeding `cd`
setopt CORRECT
setopt CORRECT_ALL # enable zsh corrections 

# save history over multiple seassions
# save history to file in ZDOTDIR (defined in ~/.zshenv)
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history 
setopt EXTENDED_HISTORY
SAVEHIST=5000
HISTSIZE=2000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# add commands to history as they are typed, instead of on exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

#################
#### EXPORTS ####
#################
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
PROMPT='%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b'
# my website 
WEB='/Users/sean/Documents/hobbies/WEBSITES/'
# family tree
FAM='/Users/sean/Documents/hobbies/family/'
# music
MUSIC='/Users/sean/Documents/hobbies/music/'
##############
#### PATH ####
##############
# add my bin to PATH
PATH="/Users/sean/bin:$PATH"
# add go to PATH
PATH="$PATH:$HOME/go/bin"
# add Python Libraries to PATH
PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.6/bin"
# added by Anaconda3 5.2.0 installer
PATH="$PATH:/Users/sean/anaconda3/bin"

#################
#### ALIASES ####
#################
alias sublime="open -a /Applications/Sublime\ Text.app"
alias skim='open -a /Applications/Skim.app/Contents/MacOS/Skim'
alias text-edit='open -a TextEdit'

###################
#### FUNCTIONS ####
###################
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

##################
#### HUNSPELL #### 
##################
# Hunspell Dictionary
export EN_SEAN_TXT="/Users/sean/Library/Spelling/en_sean/en_sean.txt"
export EN_SEAN_IN="/Users/sean/Library/Spelling/en_sean/en_sean.in"
export EN_SEAN_DIC="/Users/sean/Library/Spelling/en_sean.dic"

add_to_dict() {
  echo $1 >> $EN_SEAN_TXT
  cat $EN_SEAN_TXT | sort | uniq > $EN_SEAN_IN
  cat $EN_SEAN_IN | wc -l | tr -d ' ' > $EN_SEAN_DIC
  cat $EN_SEAN_IN >> $EN_SEAN_DIC
  rm $EN_SEAN_IN
}

