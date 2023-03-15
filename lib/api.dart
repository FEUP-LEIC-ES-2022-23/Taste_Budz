import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  Future<void> getInfo() async {
    final client = http.Client();

    final body = http.MultipartRequest(
        'POST', Uri.parse('https://worldwide-restaurants.p.rapidapi.com/search'))
      ..headers.addAll({
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': 'd0d264f33fmsh4dd0f113380c557p16ac02jsnc8d3607f9f4d',
        'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
      })
      ..fields.addAll({
        'language': 'en_US',
        'limit': '30',
        'location_id': '297704',
        'currency': 'USD',
      });

    final response = await client.send(body);
    final responseBody = await response.stream.bytesToString();
    final statusCode = response.statusCode;
    print(responseBody);

    client.close();
  }
}