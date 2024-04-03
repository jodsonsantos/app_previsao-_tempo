import 'dart:convert';

import 'package:app_tempo/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=3129c9917a8082fa1a1638d1231464ec&units=metric");

    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
