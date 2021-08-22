#!/bin/bash
input="master_samr/repos_list.txt"
while IFS= read -r curr_repo
do
  echo "Cloning $curr_repo"
  git clone $curr_repo
  echo
done < "$input"