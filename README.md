# Weather Flask App

This is a simple Flask web application that allows users to retrieve current weather information for a specified location. It uses the WeatherAPI.com API to fetch weather data based on the user's input.

## Features

- Get live weather data for any location worldwide
- Display temperature in both Celsius and Fahrenheit
- Show additional weather details like wind speed, humidity, and visibility
- Secure API key management with environment variables
- Robust error handling and input validation
- Responsive web interface with Bootstrap styling

## Technologies Used

- **Backend**: Python 3.7+ with Flask framework
- **Frontend**: HTML5, CSS3, Bootstrap 5
- **API**: WeatherAPI.com for real-time weather data
- **Security**: python-dotenv for environment variable management

## Prerequisites

Before running this application, make sure you have:

- Python 3.7 or higher installed on your system
- pip (Python package installer)
- A free API key from WeatherAPI.com

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/Ragini-Shaw06/Weather-Flask-App.git
cd Weather-Flask-App
```

### 2. Set Up Virtual Environment (Recommended)

```bash
# Create virtual environment
python -m venv weather_app_env

# Activate virtual environment
# On Windows:
weather_app_env\Scripts\activate

# On macOS/Linux:
source weather_app_env/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Get Your API Key

1. Visit [WeatherAPI.com](https://www.weatherapi.com/)
2. Sign up for a free account
3. Go to your dashboard and copy your API key

### 5. Configure Environment Variables

1. Copy the example environment file:
   ```bash
   # On Windows:
   copy .env.example .env
   
   # On macOS/Linux:
   cp .env.example .env
   ```

2. Open `.env` file in any text editor and replace `your_api_key_here` with your actual API key:
   ```
   API_KEY=your_actual_api_key_here
   API_HOST=weatherapi-com.p.rapidapi.com
   ```

### 6. Run the Application

```bash
python app.py
```

The application will start running on `http://127.0.0.1:5000` or `http://localhost:5000`

### 7. Access the Application

Open your web browser and navigate to:
- Local access: `http://127.0.0.1:5000`
- Or: `http://localhost:5000`

## Usage Instructions

1. **Enter Location**: Type any city name, country, or location in the search field
2. **Get Weather**: Click the "What's the Weather" button
3. **View Results**: The app will display comprehensive weather information including:
   - Current temperature (°C and °F)
   - Weather condition with icon
   - Location details (coordinates, timezone)
   - Wind information (speed and direction)
   - Atmospheric data (pressure, humidity, visibility)
   - Comfort metrics (feels like temperature, UV index)

## Project Structure

```
Weather-Flask-App/
│
├── app.py                 # Main Flask application with routes
├── requirements.txt       # Python dependencies
├── .env                   # Environment variables (not in repo)
├── .env.example          # Example environment file
├── .gitignore            # Git ignore rules
├── README.md             # Project documentation
└── templates/            # Flask templates directory
    └── home.html         # Main HTML template with styling
```

## API Configuration

The app uses the WeatherAPI.com service with the following endpoints:
- **Base URL**: `https://weatherapi-com.p.rapidapi.com`
- **Endpoint**: `/current.json`
- **Method**: GET
- **Parameters**: Location query (city, coordinates, etc.)

## Error Handling

The application includes comprehensive error handling for:

- ❌ **Network Issues**: Connection timeouts and network errors
- ❌ **Invalid Locations**: Non-existent or misspelled place names
- ❌ **API Errors**: Service unavailability or quota exceeded
- ❌ **Empty Input**: Form validation for required fields
- ❌ **Missing Data**: Graceful handling of incomplete API responses

## Troubleshooting

### Common Issues and Solutions

**Issue**: "ModuleNotFoundError" when running the app
```bash
# Solution: Install dependencies
pip install -r requirements.txt
```

**Issue**: "API Key not found" warning
```bash
# Solution: Check your .env file
# Make sure API_KEY is set correctly without quotes
```

**Issue**: "Invalid response from weather service"
```bash
# Solution: Verify your API key is valid
# Check if you've exceeded the free tier limits
```

**Issue**: App won't start on port 5000
```bash
# Solution: Port might be in use, try a different port
# Modify app.py: app.run(debug=True, port=5001)
```

### Development Mode

For development with auto-reload:
```bash
# Set environment variable for development
export FLASK_ENV=development  # On macOS/Linux
set FLASK_ENV=development     # On Windows CMD
$env:FLASK_ENV="development"  # On Windows PowerShell

python app.py
```

## Security Notes

- 🔐 API keys are stored in environment variables, not in code
- 🚫 The `.env` file is excluded from version control
- ⚠️ Never commit your actual API key to the repository
- 🛡️ Input validation prevents basic injection attempts

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes and test thoroughly
4. Commit your changes: `git commit -m 'Add feature description'`
5. Push to the branch: `git push origin feature-name`
6. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

If you encounter any issues:

1. Check the troubleshooting section above
2. Ensure all prerequisites are met
3. Verify your API key is valid and active
4. Check the terminal/console for error messages

For additional help, please open an issue on the GitHub repository.

## API Information

- **Provider**: [WeatherAPI.com](https://www.weatherapi.com/)
- **Free Tier**: 1 million calls per month
- **Rate Limit**: 1 request per second
- **Data Coverage**: Global weather data with real-time updates

---

**Made with ❤️ using Flask and WeatherAPI.com**
│
├── app.py # Main application file
├── requirements.txt # List of required packages
└── templates/
└── home.html # HTML template for the home page

## Contributing

Contributions are welcome! Please create a pull request or open an issue for any changes or suggestions.

## Contact

Email: [raginishaw0607@gmail.com](mailto:raginishaw0607@gmail.com)
