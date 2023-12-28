import 'dart:convert';

import 'package:http/http.dart';

import 'package:wetherapi/wethermodel.dart';

class ApiService {
  Future<WeatherModel> getWeatherData() async {
    String url = "http://api.weatherapi.com/v1/forecast.json?key=523501fd5a29429890065352232612&q=London&days=7";

    try {
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        WeatherModel weatherModel = WeatherModel.fromJson(json);
        return weatherModel;
      } else {
        throw ("No data found");
      }
    } catch (e) {
      print(e.toString());
      throw e.toString();
    }
  }
}



