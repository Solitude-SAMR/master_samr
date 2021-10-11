#!/bin/bash
if (( $# ==0 )); then
    echo "Pass the git command to parse!"
    exit 1
elif (( $# >1 )); then
    echo "Pass only one git command to parse!"
    exit 1
fi

CMD=$1
for dir in */; do
  if [ -d $dir/.git ] 
  then
    echo "Running git '$CMD' on $dir"
    git --git-dir="$dir.git" $CMD
    echo
  else 
    echo "$dir is not a git repo"
  fi
done
