@echo off
REM Quick run script for Weather Flask App (Windows)

echo  Starting Weather Flask App...
echo ================================

REM Check if virtual environment exists
if not exist weather_app_env (
    echo Virtual environment not found. Please run setup.bat first.
    pause
    exit /b 1
)

REM Activate virtual environment
call weather_app_env\Scripts\activate.bat

REM Check if .env file exists
if not exist .env (
    echo .env file not found. Please create it with your API key.
    echo You can copy .env.example to .env and edit it.
    pause
    exit /b 1
)

REM Run the application
echo Starting Flask application...
python app.py
