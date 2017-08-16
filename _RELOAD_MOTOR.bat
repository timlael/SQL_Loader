@echo off

echo Renaming Text Files...
echo.
for %%i in (*.txt) do (
ren %%~ni.txt %%~ni.dsv
echo %%~ni.txt Renamed To %%~ni.dsv. > _Reload_%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%.log
)
echo Renaming Text Files Complete.
echo.

echo Deleting Old Log Files...
echo.
for %%i in (.\LOG\*.log) do (
del .\LOG\%%~ni.log
echo %%~ni.log Deleted. >> _Reload_%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%.log
)
echo Deleting Old Log Files Complete.
echo.

echo Please Wait, Loading Data...
echo You Will Be Notified When The Data Load Has Completed...
echo.
for %%i in (.\CTL\*.ctl) do ( 
   sqlldr spec/spec@boxster control=.\CTL\%%~ni.ctl log=.\LOG\%%~ni.log BAD=.\BAD\%%~ni.bad DISCARD=.\DIS\%%~ni.dis >> _Reload_%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%.log
)
echo Data Load Complete.
echo.

echo End of Script. Reload Complete.
echo.
echo Check log files for errors
echo.
pause
