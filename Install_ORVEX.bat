@echo off
setlocal
title ORVEX installer
cd /d "%~dp0"
echo.
echo  ===== ORVEX one-click installer =====
echo  Please keep the internet on. This takes a few minutes the first time.
echo.

set "PY="
python --version >nul 2>&1 && set "PY=python"
if not defined PY ( py -3 --version >nul 2>&1 && set "PY=py -3" )
if defined PY goto have_python

echo [1/3] Python is not installed. Installing it now...
winget install -e --id Python.Python.3.11 --silent --accept-package-agreements --accept-source-agreements >nul 2>&1
call :find_python
if defined PY goto have_python

echo      winget not available, downloading Python directly...
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; Invoke-WebRequest 'https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe' -OutFile '%TEMP%\orvex_py.exe'"
"%TEMP%\orvex_py.exe" /quiet InstallAllUsers=0 PrependPath=1 Include_test=0
call :find_python
if defined PY goto have_python

echo.
echo  Could not install Python automatically. Please install Python 3.11 from python.org
echo  (tick "Add Python to PATH"), then double-click this file again.
pause
exit /b 1

:have_python
echo [2/3] Installing ORVEX and everything it needs...
%PY% orvex.py --install-desktop
echo [3/3] Starting ORVEX...
start "" %PY% orvex.py --app
echo.
echo  Done! ORVEX opens now. Next time just use the ORVEX icon on the Desktop
echo  (it also starts by itself when Windows starts).
timeout /t 6 >nul
exit /b 0

:find_python
set "PY="
for %%V in (311 312 310 313) do (
  if exist "%LOCALAPPDATA%\Programs\Python\Python%%V\python.exe" if not defined PY set PY="%LOCALAPPDATA%\Programs\Python\Python%%V\python.exe"
)
if not defined PY ( python --version >nul 2>&1 && set "PY=python" )
exit /b 0
