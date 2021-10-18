#### PROMPT ####
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
PROMPT="%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b"

#### SEAN BIN ####
PATH=$SEAN/bin:$PATH
PATH=$SEAN/local-bin:$PATH

#### LL ####
alias ll="ls -GgoAth -color" 

