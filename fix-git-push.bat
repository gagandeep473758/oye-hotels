@echo off
echo ============================================
echo    FIXING GIT AND PUSHING TO GITHUB
echo ============================================
echo.

echo Step 1: Navigating to project folder
echo ----------------------------
cd /d C:\OYE
echo Current directory: %CD%
echo.

echo Step 2: Checking Git status
echo ----------------------------
git status
echo.

echo Step 3: Adding all files
echo ----------------------------
git add .
echo Files added
echo.

echo Step 4: Creating commit
echo ----------------------------
git commit -m "Initial commit - OYE Hotels booking application"
echo.

echo Step 5: Ensuring branch is named 'main'
echo ----------------------------
git branch -M main
echo Branch set to main
echo.

echo Step 6: Removing old remote (if exists)
echo ----------------------------
git remote remove origin 2>nul
echo.

echo Step 7: Adding correct remote
echo ----------------------------
git remote add origin https://github.com/gagandeep473758/oye-hotels.git
echo Remote added
echo.

echo Step 8: Pushing to GitHub
echo ----------------------------
echo.
echo You will be asked for:
echo Username: gagandeep473758
echo Password: [USE YOUR PERSONAL ACCESS TOKEN]
echo.
echo If you don't have a token:
echo 1. Go to: https://github.com/settings/tokens
echo 2. Click "Generate new token (classic)"
echo 3. Select "repo" scope
echo 4. Copy the token and paste it when asked for password
echo.
pause
echo.

git push -u origin main

echo.
echo ============================================
if %ERRORLEVEL% EQU 0 (
    echo    SUCCESS! CODE IS ON GITHUB!
    echo ============================================
    echo.
    echo Your repository: https://github.com/gagandeep473758/oye-hotels
    echo.
    echo Next: Deploy on Render.com
    echo See RENDER_DEPLOYMENT_STEPS.md
) else (
    echo    PUSH FAILED - SEE ERROR ABOVE
    echo ============================================
    echo.
    echo Common fixes:
    echo 1. Make sure you entered the correct token
    echo 2. Token must have 'repo' scope enabled
    echo 3. Repository must exist on GitHub
    echo.
    echo Try using GitHub Desktop instead:
    echo Download: https://desktop.github.com
)
echo.
pause
