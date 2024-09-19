@echo off
title SysRIP
color A
chcp 65001 >nul 2>&1
echo WELCOME TO SYSRIP
timeout /t 3 /nobreak >nul 2>&1
echo.
echo LOADING READY
timeout /t 1 /nobreak >nul 2>&1
pause
cls
echo 0% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 7% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 18% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 42% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 67% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 81% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 89% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 99% COMPLETE
timeout /t 1 /nobreak >nul 2>&1
cls
echo 100% COMPLETE
echo Loading complete!
pause
cls
color 6
call :banner

:home
cls
color 6
call :ready

:ready
cls
call :banner
CHOICE /C hse /M "SysRIP (c) TSoft 2024 - For a list of commands, type H"
If %ERRORLEVEL% EQU 1 goto help
If %ERRORLEVEL% EQU 2 goto scan
If %ERRORLEVEL% EQU 3 goto exit

:help
cls
call :banner
echo ↳ Command List
echo [H]elp - Displays this menu
echo [S]can System - Scans your system, along with any additional drives. From SysRIP Classic (2014).
echo [E]xit - Exits SysRIP.
echo.
pause
goto :home

:scan
cls
call :banner
CHOICE /C yn /M "Please confirm you want to start the scan (this may take a few minutes) (Y/N)"
If %ERRORLEVEL% EQU 1 goto goodscan
If %ERRORLEVEL% EQU 2 goto home

:goodscan
cls
color A
tree
color 6
echo.
echo Scan complete!
echo.
pause
goto :home

:exit
color 4
CHOICE /C yn /M "Please confirm you want to exit SysRIP (Y/N)"
If %ERRORLEVEL% EQU 1 goto confirmexit
If %ERRORLEVEL% EQU 2 goto home

:confirmexit
cls
echo Thank you for using SysRIP! Goodbye!
timeout /t 3 /nobreak >nul 2>&1
call :banner
exit

:banner
echo                                        ███████╗██╗   ██╗███████╗██████╗ ██╗██████╗ 
timeout /t 0 /nobreak >nul 2>&1
echo                                        ██╔════╝╚██╗ ██╔╝██╔════╝██╔══██╗██║██╔══██╗
timeout /t 0 /nobreak >nul 2>&1
echo                                        ███████╗ ╚████╔╝ ███████╗██████╔╝██║██████╔╝
timeout /t 0 /nobreak >nul 2>&1
echo                                        ╚════██║  ╚██╔╝  ╚════██║██╔══██╗██║██╔═══╝ 
timeout /t 0 /nobreak >nul 2>&1
echo                                        ███████║   ██║   ███████║██║  ██║██║██║     
timeout /t 0 /nobreak >nul 2>&1
echo                                       ╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚═╝
echo.
