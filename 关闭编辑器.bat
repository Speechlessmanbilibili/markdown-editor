@echo off
set PORT=3055
echo Stopping Markdown Editor (port %PORT%)...

set found=0
for /f "tokens=5" %%p in ('netstat -ano 2^>nul ^| findstr ":%PORT%" ^| findstr "LISTENING"') do (
    taskkill /F /PID %%p >nul 2>&1
    echo [OK] Killed process PID: %%p
    set found=1
)

if %found% equ 0 (
    echo No running server found on port %PORT%
)

pause
