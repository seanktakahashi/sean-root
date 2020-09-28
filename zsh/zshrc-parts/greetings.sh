##################
#### GREETING ####
##################
# generate random eye
RANGE=6
CHOICE=$RANDOM
let "CHOICE %= $RANGE" # mod by range
case $CHOICE in
  0)
    EYE="'"
    ;;
  1)
    EYE="^"
    ;;
  2)
    EYE='"'
    ;;
  3)
    EYE="*"
    ;;
  4)
    EYE="\`"
    ;;
  5)
    EYE="-"
    ;;
  *)
    echo 'something went wrong in my random func'
    ;;
esac

echo "
      \    /\\
       )  ( $EYE)
      (  /  )
       \(__)|
"
