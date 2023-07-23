#! /usr/bin/bash

# bash privatewl.sh -w NewWord
while getopts 'w:' flag; do
  case "${flag}" in
    w) word="${OPTARG}";;
  esac
done

echo "$word" >> newwords.txt
cat newwords.txt | anew wl.txt
#---------------------------------------
git add wl.txt
git commit -m "update"
git push https://{Username}:{Access_Token}@github.com/{Username}/{PATH}
