#################
#### OPTIONS ####
#################
setopt NO_CASE_GLOB # expansion of wild-card characters such as * and ?
setopt AUTO_CD # if only a path is specified, assume proceeding `cd`
# setopt CORRECT
# setopt CORRECT_ALL # enable zsh corrections 

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
