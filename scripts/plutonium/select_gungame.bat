:: The purpose of this script is to switch
:: the gamemode of the plutonium t5 server
:: to gun game.

:: Getting to the t5 repo directory
C:
cd \Users\Jake\AppData\Local\Plutonium\storage\t5

:: Switch to gungame configs
git status
git fetch
git reset --hard
git checkout gun_game
git pull origin gun_game

:: Restart server
Z:
cd Z:\Private\conecommons\scripts\plutonium
restart.bat