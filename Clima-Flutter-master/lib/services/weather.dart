import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/networking.dart';

class WeatherModel {
  String apiKey = 'ce0943071d13356040b92a80a3326973';
  String apiURL = 'https://api.openweathermap.org/data/2.5/weather';
  Future<dynamic> getLocationByCity(String cityName) async {
    NetworkHelper helper =
        NetworkHelper('$apiURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = helper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationData() async {
    Location location = new Location();
    await location.getCurrentLocation();
    NetworkHelper helper = NetworkHelper(
        '$apiURL?lat=${location.lat}&lon=${location.long}&appid=$apiKey&units=metric');
    var weather = await helper.getData();
    return weather;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
