/*
class Restaurant {
    String location_id;
    String restaurant_name;
    String restaurant_latitude;
    String num_reviews;
    String timezone;
    String location;
    String restaurant_photo;
    String ranking;
    String rating;
    String price_level;
    String price_interval;
    String restaurant_description;
    String restaurant_phone;
    String restaurant_website;
    String restaurant_email;
    String city;
    String country;
    String restaurant_address;
    String restaurant_open_time;
    String restaurant_close_time;
    String cuisine_type;
    String dietary_restrictions;


    Restaurant(
    this.location,
    );

factory Restaurant.fromJson(Map<String,dynamic> json){
  bool type = false;
  if (json['type'] == 'movie'){
  type = true;
}

var location_id = json['location_id'] ?? '';
var restaurant_name = json['name'] ?? '';
var restaurant_latitude = json['latitude'] ?? 1;
var num_reviews = json['num_reviews'] ?? 1;
var timezone = json['timezone'] ?? 1;
var location = json['location_string'] ?? '';
var restaurant_photo = json['photo_original'] ?? '';
var ranking = json['ranking'] ?? '';
var rating = json['rating'] ?? 1;
var price_level = json['price_level'] ?? 1;
var price_interval = json['price'] ?? 1;
var restaurant_description = json['description'] ?? '';
var restaurant_phone = json['phone'] ?? '';
var restaurant_website = json['website'] ?? '';
var restaurant_email= json['email'] ?? 1;
var city = json['city'] ?? 1;
var country = json['country'] ?? 1;
var restaurant_address = json['address'] ?? '';
var restaurant_open_time = json['open_time'] ?? '';
var restaurant_close_time = json['close_time'] ?? '';
var cuisine_type = json['cuisine'] ?? 1;
var dietary_restrictions = json['dietary_restrictions'] ?? 1;


return Restaurant.api(
  location_id: location_id,
  restaurant_name: restaurant_name,
  restaurant_latitude: restaurant_latitude,
  num_reviews: num_reviews,
  timezone: timezone,
  location: location,
  restaurant_photo: restaurant_photo,
  ranking: ranking,
  rating: rating,
  price_level: price_level,
  price_interval: price_interval,
  restaurant_description: restaurant_description,
  restaurant_phone: restaurant_phone,
  restaurant_website: restaurant_website,
  restaurant_email: restaurant_email,
  city: city,
  country: country,
  restaurant_address: restaurant_address,
  restaurant_open_time: restaurant_open_time,
  restaurant_close_time: restaurant_close_time,
  cuisine_type: cuisine_type,
  dietary_restrictions: dietary_restrictions,
);
}
}
*/