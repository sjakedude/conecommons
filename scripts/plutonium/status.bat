@echo off
for /f "tokens=2" %%a in ('tasklist ^| findstr "plutonium-bootstrapper"') do (
    echo %%a
    echo "SERVER IS RUNNING"
)
echo "Checking branch"
C:
cd /Users/Jake/AppData/Local/Plutonium/storage/t5
for /f "delims=* tokens=2" %%a in ('git branch') do (
    set "activeBranch=%%a"
    goto :next
)
:next
echo Active branch: %activeBranch%