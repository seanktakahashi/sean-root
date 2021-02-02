#################
#### EXPORTS ####
#################
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
PROMPT="%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b"
EDITOR="vim"

##############
#### PATH ####
##############
# add my bin to PATH
PATH=$SEAN/bin:$PATH
PATH=$HOME/Desktop/jdk-mission-control:$PATH

#################
#### ALIASES ####
#################
alias sublime="open -a /Applications/Sublime\ Text.app"
alias vscode="open -a /Applications/Visual\ Studio\ Code.app"
alias skim="open -a /Applications/Skim.app/Contents/MacOS/Skim"
alias textedit="open -a TextEdit"
alias ll="ls -al"

# tmux aliases
alias tmuxnew="tmux new -s"
alias tmuxattach="tmux attach-session -t"

# git
alias gs="git status"
alias gstat="git status"
alias gc="git checkout"
alias gcheck="git checkout"
alias gb="git branch"
alias gp='git push'

alias gfix="git commit -am fix"
alias gsmall="git commit -am 'small'"
alias gammend="git commit --amend --no-edit"
alias gupstream="git push --set-upstream origin"
alias gmerge="git checkout develop; git pull; git checkout -; git merge develop"

alias gerpush="git push origin HEAD:refs/for/develop"
alias gauthor="git log --author=$USER --shortstat $BRANCH | \
  awk '/^ [0-9]/ { f += $1; i += $4; d += $6 } \
  END { printf(\"%d files changed, %d insertions(+), %d deletions(-)\", f, i, d) }'"

__git_alias="
alias gs='git status'
alias gstat='git status'
alias gc='git checkout'
alias gcheck='git checkout'
alias gb='git branch'
alias gp='git push'

alias gfix='git commit -am fix'
alias gsmall='git commit -am 'small''
alias gammend='git commit --amend --no-edit'
alias gupstream='git push --set-upstream origin'
alias gmerge='git checkout develop; git pull; git checkout -; git merge develop'

alias gerpush='git push origin HEAD:refs/for/develop'
"

alias galias='echo $__git_alias'

# pgdev

# autocomplete for git
autoload -Uz compinit && compinit -u
