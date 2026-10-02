@echo off
title GitHub Auto-Upload Tool - MovieBox
chcp 65001 >nul

echo ========================================================
echo        🚀 GitHub Easy Uploader for MovieBox
echo ========================================================
echo.

:: Check Git Installation
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git is not installed or not in PATH!
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

:: Check if git username is set
for /f "tokens=*" %%i in ('git config user.name') do set "GIT_USER=%%i"
if "%GIT_USER%"=="" (
    set /p "GIT_USER=Enter your Git Name (e.g. Ali Khan): "
    git config --global user.name "%GIT_USER%"
)

for /f "tokens=*" %%i in ('git config user.email') do set "GIT_EMAIL=%%i"
if "%GIT_EMAIL%"=="" (
    set /p "GIT_EMAIL=Enter your Git Email (e.g. yourname@gmail.com): "
    git config --global user.email "%GIT_EMAIL%"
)

echo.
echo [1] Checking current repository remote...
git remote -v
echo.

echo --------------------------------------------------------
echo Enter your GitHub Repository URL.
echo Example: https://github.com/your-username/MovieBox-Tui.git
echo (Leave blank to keep existing remote)
echo --------------------------------------------------------
set /p "REPO_URL=Your GitHub Repo URL: "

if not "%REPO_URL%"=="" (
    git remote set-url origin %REPO_URL%
    echo Remote updated to: %REPO_URL%
)

echo.
echo [2] Adding all new files (run.bat, mobile_setup.sh, etc.)...
git add .

echo.
echo [3] Committing changes...
set /p "COMMIT_MSG=Enter commit message (Default: 'Update MovieBox with PC and Mobile fast launchers'): "
if "%COMMIT_MSG%"=="" set "COMMIT_MSG=Update MovieBox with PC and Mobile fast launchers"

git commit -m "%COMMIT_MSG%"

echo.
echo [4] Pushing to GitHub...
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo      🎉 SUCCESS! Code uploaded to GitHub successfully!
    echo ========================================================
) else (
    echo.
    echo [!] Push failed. If the remote has conflicts, you can try:
    echo     git push -u origin main --force
)

echo.
pause
