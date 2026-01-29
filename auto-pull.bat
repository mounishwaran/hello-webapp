@echo off
cd C:\xampp\htdocs\hello-webapp

:loop
git fetch origin
git status -uno | findstr "behind" > nul
if %errorlevel%==0 (
    echo Changes detected. Pulling...
    git pull origin main
) else (
    echo No changes.
)

timeout /t 5 > nul
goto loop
