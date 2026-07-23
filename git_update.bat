@echo off
title Git Update Tool - SW AHARE Multi-Cuisine Restaurant
color 0A

echo ======================================================================
echo          SW AHARE Multi-Cuisine Restaurant - Git Auto Update          
echo ======================================================================
echo.

:: Check git status
git status

echo.
echo ----------------------------------------------------------------------
set /p commit_msg="Enter commit message (or press Enter for 'Update website content'): "
if "%commit_msg%"=="" set commit_msg=Update website content

echo.
echo [1/3] Adding all updated files...
git add .

echo.
echo [2/3] Committing changes...
git commit -m "%commit_msg%"

echo.
echo [3/3] Pushing to GitHub repository...
git push origin main

echo.
echo ======================================================================
echo [SUCCESS] Git update completed successfully!
echo ======================================================================
echo.
pause
