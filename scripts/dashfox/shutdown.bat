@echo off
for /f "tokens=2" %%a in ('tasklist ^| findstr "python"') do (
    echo %%a
    taskkill /PID %%a /F
)