@echo off
echo ============================================
echo    FORCE PUSH TO GITHUB
echo ============================================
echo.

echo This will overwrite any files on GitHub
echo with your local files.
echo.
echo Press Ctrl+C to cancel, or
pause
echo.

cd /d C:\OYE

echo Forcing push to GitHub...
echo.
git push -u origin main --force

echo.
echo ============================================
if %ERRORLEVEL% EQU 0 (
    echo    SUCCESS! CODE IS ON GITHUB!
    echo ============================================
    echo.
    echo Repository: https://github.com/gagandeep473758/oye-hotels
    echo.
    echo Verify at: https://github.com/gagandeep473758/oye-hotels
    echo.
    echo NEXT: Deploy on Render.com
    echo See RENDER_DEPLOYMENT_STEPS.md
) else (
    echo    STILL FAILED
    echo ============================================
    echo.
    echo Let's use GitHub Desktop instead!
    echo It's much easier and handles everything automatically.
    echo.
    echo Download: https://desktop.github.com
)
echo.
pause
