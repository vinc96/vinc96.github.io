:: please place it under repository root directory

@ECHO OFF

ECHO Automatic git add ., commit and push

set /p msg = "commit message: "
git add .
git reset -- sync.bat
git commit -m "%msg%"
git push

echo Finished. Press Enter to Exist...
pause


:: github command list:
:: remember password for 15 mins: 
:: 	   git config --global credential.helper "cache --timeout=3600"
:: entirely replace local repo with remote: 
:: 	   git reset --hard origin/master
:: refresh .gitignore cache
:: 	   git rm -r --cached .
:: set default branch 
::      git push -u origin branch name