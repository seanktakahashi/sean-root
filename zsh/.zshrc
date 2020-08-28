######################
#### SEAN'S ZSHRC ####
######################

#### GREETING ####
GREETINGS_FILE=.zshrc-parts/greetings.sh
source $GREETINGS_FILE

#### OPTIONS ####
OPTIONS_FILE=.zshrc-parts/zshrc-options.sh
source $OPTIONS_FILE

#### EXPORTS + PATH + ALIASES ####
EXPORTS_FILE=.zshrc-parts/exports.sh
source $EXPORTS_FILE

#### TO WATCH ####
TO_WATCH_FILE=.zshrc-parts/to-watch.sh
source $TO_WATCH_FILE

#### HUNSPELL #### 
HUNSPELL_FILE=.zshrc-parts/hunspellsh
source $HUNSPELL_FILE
