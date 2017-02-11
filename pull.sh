# please place it under repository root directory

echo Automatic git pull from default branch

git pull

echo Finished. Press Enter to Exist...

read


# github command list:
# remember password for 15 mins: 
# 	   git config --global credential.helper "cache --timeout=3600"
# entirely replace local repo with remote: 
# 	   git reset --hard origin/master
# refresh .gitignore cache
#	   git rm -r --cached .
# set default branch 
#      git push -u origin branch name