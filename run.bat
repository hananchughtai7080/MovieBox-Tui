@echo off
title MovieBox TUI - Premium Cinema Hub
chcp 65001 >nul

:: Optimize terminal window size for best UI layout
mode con: cols=125 lines=35 2>nul

:: Set Modern UI Theme (Options: TokyoNight, Mocha, Dracula, Nord, RosePine)
if "%MOVIEBOX_THEME%"=="" (
    set "MOVIEBOX_THEME=TokyoNight"
)

:: Set VLC Player path if installed
if exist "C:\Program Files\VideoLAN\VLC\vlc.exe" (
    set "MOVIEBOX_VLC_PATH=C:\Program Files\VideoLAN\VLC\vlc.exe"
    set "MOVIEBOX_PLAYER=vlc"
) else if exist "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" (
    set "MOVIEBOX_VLC_PATH=C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"
    set "MOVIEBOX_PLAYER=vlc"
)

:: Locate moviebox-tui executable
set "MB_EXE=%LOCALAPPDATA%\Programs\MovieBox-Tui\bin\moviebox-tui.exe"

if exist "%MB_EXE%" (
    "%MB_EXE%" %*
) else (
    where moviebox-tui >nul 2>nul
    if %errorlevel% equ 0 (
        moviebox-tui %*
    ) else (
        echo [!] MovieBox-Tui executable was not found at %MB_EXE%.
        echo Installing now...
        powershell -ExecutionPolicy Bypass -File "%~dp0install.ps1"
        if exist "%MB_EXE%" (
            "%MB_EXE%" %*
        ) else (
            pause
        )
    )
)
