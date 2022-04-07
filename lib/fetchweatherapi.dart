import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/DataModel.dart';

Future<DataModel> fetchWeather(String CityName) async {
  final result = await http.get(
      Uri.parse('https://weatherapi-com.p.rapidapi.com/current.json?q='+CityName),
      headers: {
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
        'X-RapidAPI-Key': 'e5eaa77c92msh9b400b217852dd9p1db858jsnf74960762d37'
      });
  print(result.statusCode);
  print("https://weatherapi-com.p.rapidapi.com/current.json?q="+ CityName);
  print(result.body);

  return DataModel.fromJson(json.decode(result.body));
}
