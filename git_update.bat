@echo off
echo ====================================================
echo      SW AHARE Multi-Cuisine Restaurant Git Update
echo ====================================================
echo.

:: Check if git repository is initialized
if not exist ".git" (
    echo Initializing Git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/rajsubhajit554-cloud/SW-AHARE-Multi-Cuisine-Restaurant.git
)

:: Get commit message from user or set default
set /p commit_msg="Enter commit message (Press Enter for 'Update website content'): "
if "%commit_msg%"=="" set commit_msg=Update website content

echo.
echo Adding files to Git...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing changes to GitHub repository...
git push -u origin main

echo.
echo ====================================================
echo Git update finished successfully!
echo ====================================================
pause
