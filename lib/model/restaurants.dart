import 'package:tastebudz/model/review.dart';

import '../firebase/database.dart';

class Restaurant {
  String location_id;
  String restaurant_name;
  String restaurant_photo;
  String ranking;
  String rating;
  String restaurant_description;
  String restaurant_phone;
  String restaurant_website;
  String restaurant_email;
  String city;
  String restaurant_address;
  Future<List<Review>> reviews;// Added popularity field

  Restaurant({
    required this.location_id,
    required this.restaurant_name,
    required this.restaurant_photo,
    required this.ranking,
    required this.rating,
    required this.restaurant_description,
    required this.restaurant_phone,
    required this.restaurant_website,
    required this.restaurant_email,
    required this.city,
    required this.restaurant_address,
    required this.reviews,// Added popularity field
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    var location_id = json['location_id'] ?? '';
    var restaurant_name = json['name'] ?? '';
    var restaurant_photo = json['restaurant_photo'] ?? '';
    var ranking = json['ranking_position'] ?? '';
    var rating = json['rating'] ?? '1';
    var restaurant_description = json['restaurant_description'] ?? '';
    var restaurant_phone = json['phone'] ?? '';
    var restaurant_website = json['website'] ?? '';
    var restaurant_email = json['email'] ?? '1';
    var city = json['ranking_geo'] ?? '1';
    var restaurant_address = json['address'] ?? '';
    var reviews = Database.fetchReviews(json['id'], 0, 0);

    return Restaurant(
      location_id: location_id,
      restaurant_name: restaurant_name,
      restaurant_photo: restaurant_photo,
      ranking: ranking,
      rating: rating,
      restaurant_description: restaurant_description,
      restaurant_phone: restaurant_phone,
      restaurant_website: restaurant_website,
      restaurant_email: restaurant_email,
      city: city,
      restaurant_address: restaurant_address,
      reviews: reviews,
    );
  }

}