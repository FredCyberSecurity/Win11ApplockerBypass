@echo off

REM Installation of Sysinternals
echo Starter installasjon via winget...
winget.exe install --accept-package-agreements -s msstore 9P7KNL5RWT25

REM Starting Process Explorer
echo Starter procexp.exe...
start "" "procexp.exe"
pause