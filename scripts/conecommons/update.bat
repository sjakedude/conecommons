:: The purpose of this script is to update
:: conecommons with the latest commit from 
:: the master branch

:: Pulling the latest commit from remote
Z:
cd \Private\conecommons
git status
git fetch
git pull origin master