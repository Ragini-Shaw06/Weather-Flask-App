# Weather Flask App

This is a simple Flask web application that allows users to retrieve current weather information for a specified location. It uses the WeatherAPI.com API to fetch weather data based on the user's input.

## Features

- Get live weather data for any location.
- Display temperature in both Celsius and Fahrenheit.
- Show additional weather details like wind speed, humidity, and visibility.
- Secure API key management with environment variables.
- Robust error handling and input validation.

## Technologies Used

- Python (Flask)
- HTML
- CSS
- Weather API (weatherapi.com)

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/raginishaw/Weather-Flask-App.git
    cd Weather-Flask-App
    ```

2. Install the required Python packages:

    ```sh
    pip install -r requirements.txt
    ```

3. Set up environment variables:
   - Copy the `.env.example` file to `.env` (or rename the existing `.env`)
   - Obtain a free API key from [WeatherAPI.com](https://www.weatherapi.com/)
   - Update the `API_KEY` in the `.env` file with your API key

4. Ensure you have the following packages installed:
   - Flask==2.3.3
   - requests==2.32.4
   - python-dotenv==1.0.0

## Usage

1. Run the Flask application:

    ```sh
    python app.py
    ```

2. Open your web browser and navigate to [http://localhost:5000](http://localhost:5000).

3. Enter a location in the input field and click "What's the Weather".

4. The app will display the current weather details for that location.

## File Structure

```
Weather-Flask-App/
│
├── app.py                 # Main Flask application
├── requirements.txt       # Python dependencies
├── .env                   # Environment variables (API keys)
├── .gitignore            # Git ignore file
├── README.md             # Project documentation
└── templates/            # Flask templates directory
    └── home.html         # Main HTML template
```

## Security Notes

- The API key is now stored in an environment variable for security
- The `.env` file should never be committed to version control
- Make sure to add `.env` to your `.gitignore` file

## Error Handling

The app now includes comprehensive error handling for:
- Network connection issues
- Invalid API responses
- Missing data fields
- Request timeouts
- Invalid location names

## API Information

This app uses the WeatherAPI.com service. You can get a free API key by registering at [https://www.weatherapi.com/](https://www.weatherapi.com/).
│
├── app.py # Main application file
├── requirements.txt # List of required packages
└── templates/
└── home.html # HTML template for the home page

## Contributing

Contributions are welcome! Please create a pull request or open an issue for any changes or suggestions.

## Contact

Email: [raginishaw0607@gmail.com](mailto:raginishaw0607@gmail.com)
