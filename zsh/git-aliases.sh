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
