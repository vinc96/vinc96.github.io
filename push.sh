#!/bin/bash
# please place it under repository root directory

echo Automatic git add ., commit and push

echo Automatic git pull from default branch

read -p "commit message: " msg
git add .
git commit -m "$msg"
git push

echo
echo Finished. Press Enter to Exist...

read


# github command list:
# remember password for 15 mins: 
# 	   git config --global credential.helper "cache --timeout=3600"
# entirely replace local repo with remote: 
# 	   git reset --hard origin/master