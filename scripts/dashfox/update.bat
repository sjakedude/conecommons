:: The purpose of this script is to update
:: dashfox with the latest commit from the
:: master branch, and restart the API

:: Shutting down the API
Z:
cd \Private\conecommons\scripts\dashfox
shutdown.bat

:: Pull latest commit from remote
cd \Private\dashfox
git status
git fetch
git pull origin master

:: Launch server
launch.bat