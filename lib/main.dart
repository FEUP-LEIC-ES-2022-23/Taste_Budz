import 'package:flutter/material.dart';
import 'testar.dart';
import 'api.dart';

void main() {
  API new_api = API();
  new_api.getInfo();
  runApp(MaterialApp(
    home: RestaurantRecommendationApp()
  ));
}

