import 'package:http/http.dart' as http;
class api {
  static Future<String> getInfoCity(String city) async {
    var url = Uri.parse('https://worldwide-restaurants.p.rapidapi.com/typeahead');
    
    var headers = {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': '3ba03f1a0emshaa60209d4188a6fp188e14jsn39425e8bec4c',
        'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
    };

    var body = {
      'q': city,
      'language': 'en_US',
    };

    try {
        final response = await http.post(url, headers: headers, body: body);
        return response.body;
    } catch (error) {
        print('Error: $error');
        return "Error";
    }
  }
  
  static Future<String> getInfoFromCity(String localizationID) async {
    var url = Uri.parse('https://worldwide-restaurants.p.rapidapi.com/search');

    var headers = {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': '3ba03f1a0emshaa60209d4188a6fp188e14jsn39425e8bec4c',
        'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
    };

    var body = {
      'language': 'en_US',
      'limit': '10000',
      'location_id': localizationID,
      'currency': 'EUR',
    };

    try {
        final response = await http.post(url, headers: headers, body: body);
        return response.body;
    } catch (error) {
        print('Error: $error');
        return "Error";
    }
  }
  
  
}