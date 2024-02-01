// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:custom_widgets/data_provider/weather_data_provider.dart';
import 'package:custom_widgets/model/weather_model.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(this.weatherDataProvider);

  Future<WeatherModel> getCurrentWeather() async {
    try {
      String cityName = 'New Delhi';
      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);
      print('data before :$weatherData');
      final data = jsonDecode(weatherData);
      print('data after :$data');

      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }

      return WeatherModel.fromMap(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
