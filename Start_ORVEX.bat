@echo off
title ORVEX
cd /d "%~dp0"
echo Starting ORVEX (the first time it installs what it needs, please wait)...
python orvex.py --app
if errorlevel 1 py orvex.py --app
pause
