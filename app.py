import json
import requests
import os
from flask import Flask, request, render_template
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

API_KEY = os.getenv('API_KEY')
API_HOST = os.getenv('API_HOST')
API_URL = "https://weatherapi-com.p.rapidapi.com/current.json"

# Check if environment variables are loaded
if not API_KEY:
    print("Warning: API_KEY not found in environment variables")
    API_KEY = "06bef86c8cmshdc816dca836a83ep16a3fbjsn4cd0f92741c7"  # Fallback
if not API_HOST:
    print("Warning: API_HOST not found in environment variables")
    API_HOST = "weatherapi-com.p.rapidapi.com"  # Fallback

app = Flask(__name__)

@app.route('/')
def home():
    print("Home route accessed successfully")
    return render_template('home.html')

@app.route('/test')
def test():
    return "Test route working!"

@app.route('/predict_weather', methods=['GET', 'POST'])
def predict_weather():
    print(f"predict_weather route accessed with method: {request.method}")
    if request.method == 'POST':
        q = request.form['location']
        
        # Validate input
        if not q or q.strip() == '':
            return render_template('home.html', error='Please enter a valid location name.')
        
        url = API_URL
        querystring = {"q": q}
        headers = {
            "X-RapidAPI-Key": API_KEY,
            "X-RapidAPI-Host": API_HOST
        }
        
        try:
            response = requests.request("GET", url, headers=headers, params=querystring, timeout=10)
            response.raise_for_status()  # Raises an HTTPError for bad responses
            
            json_data = response.json()
            
            # Check if the API returned an error
            if 'error' in json_data:
                return render_template('home.html', error=f"Weather API Error: {json_data['error'].get('message', 'Unknown error')}")
            
            # Extract location data
            location = json_data.get('location', {})
            current = json_data.get('current', {})
            condition = current.get('condition', {})
            
            # Prepare data for template
            weather_data = {
                'name': location.get('name'),
                'region': location.get('region'),
                'country': location.get('country'),
                'lat': location.get('lat'),
                'lon': location.get('lon'),
                'tz_id': location.get('tz_id'),
                'localtime_epoch': location.get('localtime_epoch'),
                'localtime': location.get('localtime'),
                'last_updated_epoch': current.get('last_updated_epoch'),
                'last_updated': current.get('last_updated'),
                'temp_c': current.get('temp_c'),
                'temp_f': current.get('temp_f'),
                'is_day': current.get('is_day'),
                'condition_text': condition.get('text'),
                'condition_icon': condition.get('icon'),
                'wind_mph': current.get('wind_mph'),
                'wind_kph': current.get('wind_kph'),
                'wind_degree': current.get('wind_degree'),
                'wind_dir': current.get('wind_dir'),
                'pressure_mb': current.get('pressure_mb'),
                'pressure_in': current.get('pressure_in'),
                'precip_mm': current.get('precip_mm'),
                'precip_in': current.get('precip_in'),
                'humidity': current.get('humidity'),
                'cloud': current.get('cloud'),
                'feelslike_c': current.get('feelslike_c'),
                'feelslike_f': current.get('feelslike_f'),
                'vis_km': current.get('vis_km'),
                'vis_miles': current.get('vis_miles'),
                'uv': current.get('uv'),
                'gust_mph': current.get('gust_mph'),
                'gust_kph': current.get('gust_kph')
            }

            return render_template('home.html', **weather_data)

        except requests.exceptions.Timeout:
            return render_template('home.html', error='Request timeout. Please try again.')
        except requests.exceptions.ConnectionError:
            return render_template('home.html', error='Connection error. Please check your internet connection.')
        except requests.exceptions.HTTPError as e:
            return render_template('home.html', error=f'HTTP Error: {e}')
        except json.JSONDecodeError:
            return render_template('home.html', error='Invalid response from weather service.')
        except KeyError as e:
            return render_template('home.html', error=f'Missing data in weather response: {e}')
        except Exception as e:
            return render_template('home.html', error='An unexpected error occurred. Please try again.')
    
    return render_template('home.html')


if __name__ == '__main__':
    app.run(debug=True)