#!/usr/bash
function fileChecks()
{
  if [ ! -f "$PWD/vim/.tmux.conf" ]; then
    echo "missing vim/.tmux.conf"
    exit 1;
  elif [ ! -f "$PWD/vim/.vimrc" ]; then
    echo "missing vim/.vimrc"
    exit 1;
  fi
}

function main()
{
  echo "=== installing sean's shell ==="
  echo "This will install a [zshenv, vimrc, tmux.conf]"
  echo "===       here we go!       ===" 

  fileChecks

  if [ ! -z $BASH_VERSION ]; then
    echo "export SEAN=$PWD" > ~/.bashrc
    echo 'ZDOTDIR=$SEAN/zsh' >> ~/.bashrc
    echo 'source $SEAN/zsh/.zshrc' >> ~/.bashrc
  elif [ ! -z $ZSH_VERSION ]; then
    echo "SEAN=$PWD" > ~/.zshenv
    echo 'ZDOTDIR=$SEAN/zsh' >> ~/.zshenv
  fi

  ln -s $PWD/vim/.vimrc ~/.vimrc
  ln -s $PWD/vim/.tmux.conf ~/.tmux.conf

  echo "=== you'll now see a cat on login ==="
  echo "===  enjoy sean's cat ¯\_(ツ)_/¯  ==="
}

main
