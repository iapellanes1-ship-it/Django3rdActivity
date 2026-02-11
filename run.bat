@echo off
REM Quick Start Script for Django Website

echo ============================================
echo Django Navigation Website - Quick Start
echo ============================================
echo.

cd /d "%~dp0"

REM Check if venv exists
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
    echo Virtual environment created!
)

REM Activate venv
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo Installing Django...
pip install django

REM Run migrations
echo Running migrations...
python manage.py migrate

REM Start server
echo.
echo ============================================
echo Server starting at http://127.0.0.1:8000/
echo ============================================
echo.
echo Press CTRL+BREAK to stop the server
echo.
python manage.py runserver

pause
