#### PROMPT ####
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
if [ ! -z "$ZSH_VERSION" ]; then 
  PROMPT="%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b"
elif [ ! -z "BASH_VERSION" ]; then
  # set variable identifying the chroot you work in (used in the prompt below)
  if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
      debian_chroot=$(cat /etc/debian_chroot)
  fi
  DEBIAN_PART='${debian_chroot:+($debian_chroot)}'
  USER_PART='\[\033[01;36m\]\u\[\033[00m\]'
  PATH_PART='\[\033[01;32m\]\w\[\033[00m\]'
  PS1="$USER_PART:$PATH_PART\$ "
fi

#### SEAN BIN ####
PATH=$SEAN/bin:$PATH
PATH=$SEAN/local-bin:$PATH

#### LL ####
alias ll="ls -GgoAth -color" 

