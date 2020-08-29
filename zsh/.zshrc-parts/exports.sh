#################
#### EXPORTS ####
#################
# my prompt: 
#   print green check on return code 0, else print red X and return code
#   print path, limited to depth 3
#   yellow blinking greater than
PROMPT='%(?.%F{green}√.%F{red}X%?)%f %F{cyan}%3~%f%B %F{yellow}%(!.#.>)%f%b'
# my website 
WEB='$HOME/Documents/hobbies/WEBSITES/'
# family tree
FAM='$HOME/Documents/hobbies/family/'
# music
MUSIC='$HOME/Documents/hobbies/music/'

##############
#### PATH ####
##############
# add my bin to PATH
PATH='$HOME/bin:$PATH'
# add go to PATH
PATH='$PATH:$HOME/go/bin'
# add Python Libraries to PATH
PATH='$PATH:/Library/Frameworks/Python.framework/Versions/3.6/bin'
# added by Anaconda3 5.2.0 installer
PATH='$PATH:$HOME/anaconda3/bin'

#################
#### ALIASES ####
#################
alias sublime='open -a /Applications/Sublime\ Text.app'
alias skim='open -a /Applications/Skim.app/Contents/MacOS/Skim'
alias textedit='open -a TextEdit'
alias ll='ls -al'
