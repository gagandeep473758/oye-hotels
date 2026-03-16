@echo off
echo ============================================
echo    FRESH START - CLEAN GIT SETUP
echo ============================================
echo.

echo This will:
echo 1. Delete all existing Git history
echo 2. Start fresh with clean Git repository
echo 3. Push to GitHub
echo.
echo Press Ctrl+C to cancel, or
pause
echo.

echo Step 1: Navigating to project folder
echo ----------------------------
cd /d C:\OYE
echo Current directory: %CD%
echo.

echo Step 2: Deleting old Git repository
echo ----------------------------
if exist .git (
    echo Removing .git folder...
    rmdir /s /q .git
    echo Old Git history deleted!
) else (
    echo No .git folder found - starting fresh!
)
echo.

echo Step 3: Clearing Git credentials
echo ----------------------------
cmdkey /delete:git:https://github.com 2>nul
git config --global --unset credential.helper 2>nul
echo Credentials cleared!
echo.

echo Step 4: Initializing fresh Git repository
echo ----------------------------
git init
echo Git initialized!
echo.

echo Step 5: Adding all files
echo ----------------------------
git add .
echo Files added!
echo.

echo Step 6: Creating first commit
echo ----------------------------
git commit -m "Initial commit - OYE Hotels booking application"
echo Commit created!
echo.

echo Step 7: Renaming branch to 'main'
echo ----------------------------
git branch -M main
echo Branch renamed to main!
echo.

echo Step 8: Adding GitHub remote
echo ----------------------------
set /p github_username="Enter your GitHub username (gagandeep473758): "
if "%github_username%"=="" set github_username=gagandeep473758

git remote add origin https://github.com/%github_username%/oye-hotels.git
echo Remote added: https://github.com/%github_username%/oye-hotels.git
echo.

echo ============================================
echo    READY TO PUSH!
echo ============================================
echo.
echo IMPORTANT:
echo ----------
echo 1. Make sure repository exists at:
echo    https://github.com/%github_username%/oye-hotels
echo.
echo 2. If not, create it now:
echo    - Go to: https://github.com/new
echo    - Name: oye-hotels
echo    - Public: YES
echo    - DO NOT initialize with README
echo    - Click: Create repository
echo.
echo 3. You'll be asked for credentials:
echo    Username: %github_username%
echo    Password: [YOUR PERSONAL ACCESS TOKEN]
echo.
echo Press any key when ready to push...
pause
echo.

echo Pushing to GitHub...
echo.
git push -u origin main

echo.
echo ============================================
if %ERRORLEVEL% EQU 0 (
    echo    SUCCESS! CODE IS NOW ON GITHUB!
    echo ============================================
    echo.
    echo Your repository: https://github.com/%github_username%/oye-hotels
    echo.
    echo NEXT STEPS:
    echo -----------
    echo 1. Verify your code is on GitHub
    echo 2. Go to: https://render.com
    echo 3. Sign up with GitHub
    echo 4. Create New Web Service
    echo 5. Connect your oye-hotels repository
    echo.
    echo See RENDER_DEPLOYMENT_STEPS.md for details!
) else (
    echo    PUSH FAILED
    echo ============================================
    echo.
    echo Common issues:
    echo 1. Repository doesn't exist on GitHub
    echo 2. Wrong username or token
    echo 3. Token doesn't have 'repo' permission
    echo.
    echo EASIEST SOLUTION:
    echo Use GitHub Desktop instead!
    echo Download: https://desktop.github.com
)
echo.
pause
