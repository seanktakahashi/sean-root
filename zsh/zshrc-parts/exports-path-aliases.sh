#################
#### EXPORTS ####
#################
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
PROMPT="%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b"

##############
#### PATH ####
##############
# add my bin to PATH
PATH=$SEAN/bin:$PATH

#################
#### ALIASES ####
#################
alias sublime="open -a /Applications/Sublime\ Text.app"
alias skim="open -a /Applications/Skim.app/Contents/MacOS/Skim"
alias textedit="open -a TextEdit"
alias ll="ls -al"

# tmux aliases
alias tmuxnew="tmux new -s"
alias tmuxattach="tmux attach-session -t"

# git
alias gsmall="git commit -am 'small'"
alias gstat="git status"
