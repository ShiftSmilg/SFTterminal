@echo off
REM https://github.com/ShiftSmilg
set "verN=Version: Pre release 1.5"
set "iseiti=killT"
set "clearscreen=clsB"
set "extraCLS=clsX"
set "directory=dir"
set "Version=ver"
set "terminalH=Thelp"
title SFT Terminal
echo Sftmlg terminal
echo (c) Sftmlg
echo For help, use command Thelp
:cdloop
set /p "typed=%cd%> "
if "%typed%"=="%iseiti%" (
    exit
) else if "%typed%"=="%clearscreen%" (
    cls
	echo Sftmlg terminal
	title Sftmlg terminal
) else if "%typed%"=="%directory%" (
    dir
) else if "%Version%"=="%typed%" (
	echo %verN%
) else if "%typed%"=="%extraCLS%" (
	cls
) else if "%typed%"=="%terminalH%" (
    echo "Commands are: killT, clsB, clsX, ver || https://github.com/ShiftSmilg"
) else (
   REM echo Invalid command.
   %typed%
)
goto :cdloop