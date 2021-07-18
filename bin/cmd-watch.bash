#!/bin/bash

echo '=== CMD WATCH ==='
if [ -z $1 ]; then
  echo "Usage: cmd-watch.bash [file-to-watch] [command-to-run]?"
  echo -e "\t[command-to-run] defaults to file-to-watch if empty"
  exit
fi

echo -e "\tfile to watch:                    " $1
commandToRun=$2
if [[ -z $2 ]]; then
  commandToRun=$1
fi
echo -e "\tcommand to run when file changes: " $commandToRun

grabLastAccess="stat -f '%Sm' $1"

startTime=$grabLastAccess
while true; do
  newTime=$($grabLastAccess)
  if [[ "$startTime" != "$newTime" ]]; then    
    echo -e "\n=== RUNNING COMMAND @ ($newTime)==="
    $commandToRun
    startTime=$newTime
  fi
  sleep 3
done
