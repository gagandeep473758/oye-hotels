@echo off
echo ============================================
echo    CLEARING OLD CREDENTIALS AND PUSHING
echo ============================================
echo.

echo Step 1: Clearing Windows Credential Manager
echo ----------------------------
echo Removing stored GitHub credentials...
cmdkey /delete:git:https://github.com 2>nul
echo Done
echo.

echo Step 2: Clearing Git credential cache
echo ----------------------------
cd /d C:\OYE
git config --global --unset credential.helper
git config --unset credential.helper
echo Done
echo.

echo Step 3: Setting up credential helper
echo ----------------------------
git config --global credential.helper wincred
echo Done
echo.

echo Step 4: Pushing to GitHub
echo ----------------------------
echo.
echo IMPORTANT: You will be asked for credentials!
echo.
echo Username: gagandeep473758
echo Password: [YOUR PERSONAL ACCESS TOKEN]
echo.
echo Make sure you use the CORRECT account!
echo NOT Gaganfix - use gagandeep473758
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
    echo Repository: https://github.com/gagandeep473758/oye-hotels
    echo.
    echo Next Step: Deploy on Render.com
) else (
    echo    STILL HAVING ISSUES?
    echo ============================================
    echo.
    echo Use GitHub Desktop instead - it's much easier!
    echo Download: https://desktop.github.com
)
echo.
pause
