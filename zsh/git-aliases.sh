###################
### GIT ALIASES ###
###################

# quick access prefixes
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gswitch="git switch"

# short form long comamnds
gfetch() {
    if [ -n "$1" ]; then
        git fetch origin $1:$1
    else
        git fetch origin trunk:trunk
    fi
}
alias gfix="git commit -am 'fix'"
alias gsmall="git commit -am 'small'"

bash_git_complete() {
  git_completed=0
  FILE="/usr/share/bash-completion/completions/git"
  if [ -f $FILE ]; then
    source $FILE
    git_completed=1
  fi
  FILE="/etc/bash_completion.d/git"
  if [ -f $FILE ]; then
    source $FILE
    git_completed=1
  fi
  if [ $git_completed -eq 0 ]; then
    echo "git completion not installed"
  else
    __git_complete gc _git_checkout
    __git_complete gb _git_branch
    __git_complete gswitch _git_switch
  fi
}

bash_git_complete

