#!/bin/bash
# Setup script for Weather Flask App
# This script will set up the environment for running the weather app

echo "🌤️  Weather Flask App Setup Script"
echo "=================================="

# Check if Python is installed
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "❌ Python is not installed. Please install Python 3.7+ and try again."
    exit 1
fi

# Use python3 if available, otherwise python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

echo "✅ Python found: $($PYTHON_CMD --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null && ! command -v pip &> /dev/null; then
    echo "❌ pip is not installed. Please install pip and try again."
    exit 1
fi

# Use pip3 if available, otherwise pip
PIP_CMD="pip3"
if ! command -v pip3 &> /dev/null; then
    PIP_CMD="pip"
fi

echo "✅ pip found"

# Create virtual environment
echo "📦 Creating virtual environment..."
$PYTHON_CMD -m venv weather_app_env

# Activate virtual environment
echo "🔄 Activating virtual environment..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source weather_app_env/Scripts/activate
else
    source weather_app_env/bin/activate
fi

# Install dependencies
echo "📥 Installing dependencies..."
$PIP_CMD install -r requirements.txt

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    if [ -f .env.example ]; then
        echo "🔧 Creating .env file from template..."
        cp .env.example .env
        echo "⚠️  Please edit .env file and add your WeatherAPI.com API key"
    else
        echo "🔧 Creating .env file..."
        cat > .env << EOL
# Weather API Configuration
# Get your API key from: https://www.weatherapi.com/
API_KEY=your_api_key_here
API_HOST=weatherapi-com.p.rapidapi.com
EOL
        echo "⚠️  Please edit .env file and add your WeatherAPI.com API key"
    fi
else
    echo "✅ .env file already exists"
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Get your free API key from: https://www.weatherapi.com/"
echo "2. Edit the .env file and replace 'your_api_key_here' with your actual API key"
echo "3. Run the application with: python app.py"
echo "4. Open your browser to: http://localhost:5000"
echo ""
echo "To activate the virtual environment manually:"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "  weather_app_env\\Scripts\\activate"
else
    echo "  source weather_app_env/bin/activate"
fi
