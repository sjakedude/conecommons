@echo off
for /f "tokens=2" %%a in ('tasklist ^| findstr "plutonium-bootstrapper"') do (
    echo %%a
    taskkill /PID %%a /F
)