cd \Private\dashfox
set "pidArray="
for /f "tokens=2" %%a in ('tasklist ^| findstr "python"') do (
    echo %%a
    set "pid=!pidArray!,%%a"
    set "pidArray=!pidArray!,%%a"
)
launch.bat
for %%i in (%pidArray%) do (
     taskkill /PID %%i /F
)
   
