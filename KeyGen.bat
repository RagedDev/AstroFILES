@echo off
setlocal enabledelayedexpansion
set "string=abcdefghijklmnopq1234567890rstuvwxyz1234567890"
set "result="
for /L %%i in (1,1,125) do call :add
echo %result%
pause
goto :eof

:add
set /a x=%random% %% 26 
set result=%result%!string:~%x%,1!
goto :eof