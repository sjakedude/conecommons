@echo off
for /f "tokens=2" %%a in ('tasklist ^| findstr "plutonium-bootstrapper"') do (
    echo %%a
    echo SERVER IS RUNNING
)
echo Checking branch
C:
cd /Users/Jake/AppData/Local/Plutonium/storage/t5
git branch
echo Active branch is: 
git branch --show-current
Z: