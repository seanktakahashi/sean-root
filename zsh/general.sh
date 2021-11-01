#### PROMPT ####
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ ! -z "$ZSH_VERSION" ]; then 
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
elif [ ! -z "BASH_VERSION" ]; then
  # my bash prompt $
  #   print cyan user
  #   print green path
  #   pink git branch
  USER_PART='\[\033[01;36m\]\u\[\033[00m\]'
  PATH_PART='\[\033[01;32m\]\w\[\033[00m\]'
  GIT_PART="\[\033[01;35m\]\$(parse_git_branch)\[\033[00m\]"
  PS1="$USER_PART:$PATH_PART$GIT_PART\$ "
fi

#### SEAN BIN ####
PATH=$SEAN/bin:$PATH
PATH=$SEAN/local-bin:$PATH

#### LL ####
ll() {
  if [ ! -z "$ZSH_VERSION" ]; then
    ls -GgoAth -color
  elif [ ! -z "BASH_VERSION" ]; then
    ls -GgoAth --color
  fi
}


