##################
#### HUNSPELL #### 
##################
# Hunspell Dictionary
export EN_SEAN_TXT="/Users/sean/Library/Spelling/en_sean/en_sean.txt"
export EN_SEAN_IN="/Users/sean/Library/Spelling/en_sean/en_sean.in"
export EN_SEAN_DIC="/Users/sean/Library/Spelling/en_sean.dic"

add_to_dict() {
  echo $1 >> $EN_SEAN_TXT
  cat $EN_SEAN_TXT | sort | uniq > $EN_SEAN_IN
  cat $EN_SEAN_IN | wc -l | tr -d ' ' > $EN_SEAN_DIC
  cat $EN_SEAN_IN >> $EN_SEAN_DIC
  rm $EN_SEAN_IN
}

