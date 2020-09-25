# MAC-BIN

This is a bin to add to a Mac computer that Sean is using.
It assumes a `zsh` shell, 
and both sets up this shell and provides some useful executeables.

# Install

* Edit `SEAN=` in `.zshenv` to point to this directory
* run `cp .zshenv ~/`
  * this adds an zsh environment file to your home repo which will point here
* run `ln -s $PWD/vim/.vimrc ~/.vimrc` from this directory
  * this creates a symbolicly linked `.vimrc` in your home dir that maps 
  to this vimrc

