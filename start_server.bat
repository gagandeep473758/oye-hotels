@echo off
echo Cleaning Python cache...
if exist __pycache__ rmdir /s /q __pycache__
if exist templates\__pycache__ rmdir /s /q templates\__pycache__

echo Starting OYE Hotels Server...
echo Server will start on http://localhost:7000
echo Press Ctrl+C to stop the server
echo.
python main.py
