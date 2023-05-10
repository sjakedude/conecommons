:: The purpose of this script is to update
:: dashfox with the latest commit from the
:: master branch, and restart the API

:: Getting to the dashfox repo directory
Z:
cd \Private\dashfox

:: Pull latest commit from remote
git status
git fetch
git pull origin master

:: Restart server
cd Z:\Private\conecommons\scripts\dashfox
restart.bat