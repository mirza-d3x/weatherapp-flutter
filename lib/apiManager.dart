// import 'dart:io';
//
// import 'package:http/http.dart' as http;
//
// class ApiManager {
//   Future<dynamic> getApiCall(String url, Map header, String CityName) {
//     var resultJson;
//     try {
//       final result = http.get(Uri.parse(
//           'https://weatherapi-com.p.rapidapi.com/current.json?q=' + CityName),
//           headers: {
//             'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
//             'X-RapidAPI-Key': 'e5eaa77c92msh9b400b217852dd9p1db858jsnf74960762d37'
//           });
//       resultJson = _result(result);
//     }on SocketException {
//       throw FetchDataException()
//     }
//   }
// }
//
// dynamic _result(http.Response response){
//   switch(response.statusCode){
//     case 200:
//   }
// }