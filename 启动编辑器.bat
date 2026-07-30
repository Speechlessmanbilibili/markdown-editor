@echo off
cd /d "%~dp0"

echo ============================================
echo   Markdown Editor Pro
echo ============================================
echo.
echo Local:    http://localhost:3055
echo.
echo Other devices on the same network
echo can use the addresses shown below.
echo Press Ctrl+C to stop.
echo ============================================
echo.

start "" "http://localhost:3055"
node server.js
pause
