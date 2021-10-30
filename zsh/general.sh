#### PROMPT ####
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
setopt PROMPT_SUBST

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-\1-/'
}

RPROMPT="%K{green}\$(parse_git_branch)%k"
# Parts
EXIT_CODE='%(?.%F{green}√.%F{red}X)%f'
CURR_DIR='%F{cyan}%3~%f%B'
POINTER='%F{yellow}%(!.#.>)%f%b'
PROMPT="${EXIT_CODE}${CURR_DIR} ${POINTER}"

#### SEAN BIN ####
PATH=$SEAN/bin:$PATH
PATH=$SEAN/local-bin:$PATH

#### LL ####
alias ll="ls -GgoAth -color" 

