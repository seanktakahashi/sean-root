parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# my bash prompt $
#   print cyan user
#   print green path
#   pink git branch
USER_PART='\[\033[01;36m\]\u\[\033[00m\]'
PATH_PART='\[\033[01;32m\]\w\[\033[00m\]'
GIT_PART="\[\033[01;35m\]\$(parse_git_branch)\[\033[00m\]"
PS1="$USER_PART:$PATH_PART$GIT_PART\$ "
