:: The purpose of this script is to update
:: theconeportal with the latest commit from 
:: the master branch

:: Pulling the latest commit from remote
Z:
cd \Private\apache_http_server\TheConeNetworkPortal
git status
git fetch
git pull origin master