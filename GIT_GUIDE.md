# Git Setup and Sharing Guide for Weather Flask App

## For the Code Owner (You)

### 1. Prepare Your Repository

```bash
# Make sure you're in the project directory
cd "c:\Users\Kumar_Mridul\Desktop\weather app\Weather-Flask-App"

# Add all files to Git
git add .

# Commit your changes
git commit -m "Complete weather app with setup scripts and documentation"

# Push to your GitHub repository
git push origin main
```

### 2. Create a Release (Optional but Recommended)

1. Go to your GitHub repository: https://github.com/Ragini-Shaw06/Weather-Flask-App
2. Click on "Releases" → "Create a new release"
3. Tag version: `v1.0.0`
4. Title: `Weather Flask App v1.0.0`
5. Description: Brief description of features
6. Click "Publish release"

## For People Receiving Your Code

### Method 1: Using Git Clone (Recommended)

```bash
# Clone the repository
git clone https://github.com/Ragini-Shaw06/Weather-Flask-App.git

# Navigate to the project directory
cd Weather-Flask-App

# Run the setup script
# On Windows:
setup.bat

# On macOS/Linux:
chmod +x setup.sh
./setup.sh
```

### Method 2: Download ZIP

1. Go to: https://github.com/Ragini-Shaw06/Weather-Flask-App
2. Click green "Code" button → "Download ZIP"
3. Extract the ZIP file
4. Open terminal/command prompt in the extracted folder
5. Run setup script as described above

## Quick Start Instructions for Recipients

### Prerequisites
- Python 3.7 or higher
- pip (Python package installer)
- Internet connection

### Setup Steps

1. **Get the Code**
   ```bash
   git clone https://github.com/Ragini-Shaw06/Weather-Flask-App.git
   cd Weather-Flask-App
   ```

2. **Run Setup Script**
   ```bash
   # Windows users:
   setup.bat
   
   # Mac/Linux users:
   chmod +x setup.sh && ./setup.sh
   ```

3. **Get API Key**
   - Visit: https://www.weatherapi.com/
   - Sign up for free account
   - Copy your API key

4. **Configure Environment**
   - Open `.env` file in any text editor
   - Replace `your_api_key_here` with your actual API key
   - Save the file

5. **Run the Application**
   ```bash
   # Option 1: Use the run script (Windows)
   run.bat
   
   # Option 2: Manual activation and run
   # Windows:
   weather_app_env\Scripts\activate
   python app.py
   
   # Mac/Linux:
   source weather_app_env/bin/activate
   python app.py
   ```

6. **Access the App**
   - Open browser to: http://localhost:5000
   - Enter any location and get weather data!

## Troubleshooting for Recipients

### Common Issues

**Error: "python is not recognized"**
- Install Python from https://python.org
- Make sure to check "Add Python to PATH" during installation

**Error: "No module named flask"**
- Run the setup script again
- Make sure virtual environment is activated

**Error: "Invalid API key"**
- Check that you copied the API key correctly to .env file
- Ensure no extra spaces or quotes around the API key

**Port 5000 already in use**
- Edit app.py and change the port:
  ```python
  app.run(debug=True, port=5001)
  ```

## Files Included in the Repository

```
Weather-Flask-App/
├── app.py              # Main Flask application
├── requirements.txt    # Python dependencies
├── .env.example       # Example environment file
├── .gitignore         # Git ignore rules
├── README.md          # Detailed project documentation
├── setup.sh           # Setup script for Mac/Linux
├── setup.bat          # Setup script for Windows
├── run.bat            # Quick run script for Windows
├── GIT_GUIDE.md       # This file
└── templates/
    └── home.html      # Web interface template
```

## Security Notes

- The actual `.env` file with API keys is NOT included in the repository
- Recipients must create their own `.env` file with their API key
- This prevents API key exposure in public repositories

## Support for Recipients

If someone has issues running your code:

1. **Check Prerequisites**: Python 3.7+, pip installed
2. **Run Setup Script**: Use the provided setup.bat or setup.sh
3. **Verify API Key**: Make sure .env file has valid API key
4. **Check Network**: Ensure internet connection for API calls
5. **Review Console**: Look for error messages in terminal

## Making Updates

When you make changes to your code:

```bash
# Add changes
git add .

# Commit with descriptive message
git commit -m "Fix: Improved error handling for invalid locations"

# Push to GitHub
git push origin main
```

Recipients can update with:
```bash
git pull origin main
```
