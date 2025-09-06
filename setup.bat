@echo off
REM Setup script for Weather Flask App (Windows)
REM This script will set up the environment for running the weather app

echo 🌤️  Weather Flask App Setup Script
echo ==================================

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python is not installed. Please install Python 3.7+ and try again.
    pause
    exit /b 1
)

echo ✅ Python found:
python --version

REM Check if pip is installed
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ pip is not installed. Please install pip and try again.
    pause
    exit /b 1
)

echo ✅ pip found

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv weather_app_env

REM Activate virtual environment
echo 🔄 Activating virtual environment...
call weather_app_env\Scripts\activate.bat

REM Install dependencies
echo 📥 Installing dependencies...
pip install -r requirements.txt

REM Create .env file if it doesn't exist
if not exist .env (
    if exist .env.example (
        echo 🔧 Creating .env file from template...
        copy .env.example .env >nul
        echo ⚠️  Please edit .env file and add your WeatherAPI.com API key
    ) else (
        echo 🔧 Creating .env file...
        (
            echo # Weather API Configuration
            echo # Get your API key from: https://www.weatherapi.com/
            echo API_KEY=your_api_key_here
            echo API_HOST=weatherapi-com.p.rapidapi.com
        ) > .env
        echo ⚠️  Please edit .env file and add your WeatherAPI.com API key
    )
) else (
    echo ✅ .env file already exists
)

echo.
echo 🎉 Setup complete!
echo.
echo Next steps:
echo 1. Get your free API key from: https://www.weatherapi.com/
echo 2. Edit the .env file and replace 'your_api_key_here' with your actual API key
echo 3. Run the application with: python app.py
echo 4. Open your browser to: http://localhost:5000
echo.
echo To activate the virtual environment manually:
echo   weather_app_env\Scripts\activate.bat
echo.
pause
