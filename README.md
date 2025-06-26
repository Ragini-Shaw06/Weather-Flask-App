# Weather Flask App

This is a simple Flask web application that allows users to retrieve current weather information for a specified location. It uses the WeatherAPI.com API to fetch weather data based on the user's input.

## Features

- Get live weather data for any location.
- Display temperature in both Celsius and Fahrenheit.
- Show additional weather details like wind speed, humidity, and visibility.

## Technologies Used

- Python (Flask)
- HTML
- CSS
- JavaScript

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/raginishaw/Weather-Flask-App.git
    ```

2. Install the required Python packages:

    ```sh
    pip install -r requirements.txt
    ```

3. Obtain a free API key from WeatherAPI.com and replace `API_KEY` in `app.py` with your API key.

## Usage

1. Run the Flask application:

    ```sh
    python app.py
    ```

2. Open your web browser and navigate to [http://localhost:5000](http://localhost:5000).

3. Enter a location in the input field and click "What's the Weather".

4. The app will display the current weather details for that location.

## File Structure

Weather-Flask-App/
│
├── app.py # Main application file
├── requirements.txt # List of required packages
└── templates/
└── home.html # HTML template for the home page

## Contributing

Contributions are welcome! Please create a pull request or open an issue for any changes or suggestions.

## Contact

Email: [raginishaw0607@gmail.com](mailto:raginishaw0607@gmail.com)
