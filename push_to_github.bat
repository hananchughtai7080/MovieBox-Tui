@echo off
title Push MovieBox to GitHub - hananchughtai7080
chcp 65001 >nul

echo ===================================================
echo     Uploading MovieBox to GitHub (hananchughtai7080)
echo ===================================================
echo.

cd /d "%~dp0"

git remote set-url origin https://github.com/hananchughtai7080/MovieBox-Tui.git
git branch -M main

echo Pushing code to GitHub...
echo (Agar browser window open ho toh bas 'Sign in' / 'Authorize' par click karein)
echo.

git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ===================================================
    echo  🎉 MUBARAK HO! MovieBox GitHub par upload ho gaya!
    echo  Repo URL: https://github.com/hananchughtai7080/MovieBox-Tui
    echo ===================================================
) else (
    echo.
    echo [!] Normal push failed, checking if force push is needed...
    git push -u origin main --force
)

echo.
pause
