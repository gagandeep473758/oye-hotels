@echo off
echo ============================================
echo    OYE HOTELS - GIT SETUP HELPER
echo ============================================
echo.

echo This script will help you push your code to GitHub.
echo Make sure you have created a repository on GitHub first!
echo.

echo Step 1: Creating GitHub Repo
echo ----------------------------
echo 1. Go to: https://github.com/new
echo 2. Repository name: oye-hotels
echo 3. Make it PUBLIC
echo 4. DO NOT initialize with README
echo 5. Click "Create repository"
echo.

set /p github_username="Enter your GitHub username: "
echo.

echo Step 2: Initializing Git
echo ----------------------------
git init
echo ✓ Git initialized
echo.

echo Step 3: Adding all files
echo ----------------------------
git add .
echo ✓ Files added
echo.

echo Step 4: Creating commit
echo ----------------------------
git commit -m "Initial commit - OYE Hotels booking application"
echo ✓ Commit created
echo.

echo Step 5: Connecting to GitHub
echo ----------------------------
git remote add origin https://github.com/%github_username%/oye-hotels.git
echo ✓ Remote added
echo.

echo Step 6: Pushing to GitHub
echo ----------------------------
git branch -M main
git push -u origin main
echo.

echo ============================================
echo    ✓ CODE PUSHED TO GITHUB!
echo ============================================
echo.
echo Your repository: https://github.com/%github_username%/oye-hotels
echo.
echo Next Step:
echo 1. Go to: https://render.com
echo 2. Sign up with GitHub
echo 3. Create New Web Service
echo 4. Connect your oye-hotels repository
echo.
echo See RENDER_DEPLOYMENT_STEPS.md for detailed instructions!
echo.
pause
