######################
#### SEAN'S ZSHRC ####
######################

#### GREETING ####
source $ZDOTDIR/greetings.sh

#### PROMPT, SEAN BIN, GENERAL ####
source $ZDOTDIR/general.sh

#### ZSH OPTIONS ####
if [ ! -z $ZSH_VERSION ]; then 
  source $ZDOTDIR/zshrc-options.sh
fi

#### GIT ALIASES ####
source $ZDOTDIR/git-aliases.sh

#### LOCAL ZSH ####
include () {
  [[ -f "$1" ]] && source "$1"
}
include $ZDOTDIR/local-sh.sh
