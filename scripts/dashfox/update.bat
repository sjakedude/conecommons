:: The purpose of this script is to update
:: dashfox with the latest commit from the
:: master branch, and restart the API

:: Pulling the latest commit from remote
Z:
cd \Private\dashfox
git status
git fetch
git pull origin master

:: Restarting server
cd \Private\conecommons\scripts\dashfox
restart.bat