# SEAN-ZSH-ROOT

This is Sean's personal root directory
It assumes a zshell, 
and both sets up this shell and provides some useful executeables.

# Install

`sh install.sh`

# Other Useful Notes on Computer Settings

## Python

`pyenv` is useful for controlling the computer's python version.
You can add executable python versions to your computer with `pyenv` by doing the following:

- install using `brew install pyenv`
- list installable versions using `pyenv install --list`
- install version using `pyenv install 3.13.0`
- list installed versions using `pyenv versions`
- set global version using `pyenv global 3.13.0`
- add `/Users/sean/.pyenv/shims:${PATH}` to your `PATH`

[Useful Stack Overflow Comment](https://stackoverflow.com/questions/71591971/how-can-i-fix-the-zsh-command-not-found-python-error-macos-monterey-12-3)

This also sets our `pip` instance.

## Local Python Version

[venv docs](https://docs.python.org/3/library/venv.html#creating-virtual-environments)
- create a new `venv` environment with `python -m venv ./<name>`
- enter `venv` environment with `source ./<name>/bin/activate`
- install requirements with `pip instal -r requirements.txt`

