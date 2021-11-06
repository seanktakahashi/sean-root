######################
#### SEAN'S ZSHRC ####
######################

source_if_zsh() {
  [ $ZSH_VERSION ] && source $1
}

source_if_bash() {
  [ $BASH_VERSION ] && source $1
}

#### GREETING ####
source $ZDOTDIR/greetings.sh

#### SEAN BIN, GENERAL ALIASES ####
source $ZDOTDIR/general.sh

#### PROMPT ####
source_if_zsh $ZDOTDIR/zsh-prompt.sh 
source_if_bash $ZDOTDIR/bash-prompt.sh 

#### ZSH OPTIONS ####
source_if_zsh $ZDOTDIR/zshrc-options.sh

#### GIT ALIASES ####
source $ZDOTDIR/git-aliases.sh

#### LOCAL ZSH ####
[[ -f $ZDOTDIR/local-sh.sh ]] && source $ZDOTDIR/local-sh.sh
