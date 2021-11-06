parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# my zsh prompt > 
#   print green check on return code 0, else print red X
#   print path, limited to depth 3
#   yellow greater than
# my zsh rprompt >
#   green background git branch
setopt PROMPT_SUBST
EXIT_CODE='%(?.%F{green}√.%F{red}X)%f'
CURR_DIR='%F{cyan}%3~%f%B'
POINTER='%F{yellow}%(!.#.>)%f%b'
PROMPT="${EXIT_CODE}${CURR_DIR} ${POINTER}"
RPROMPT="%K{green}-\$(parse_git_branch)-%k"
