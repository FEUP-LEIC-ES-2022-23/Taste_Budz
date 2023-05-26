class Restaurant {
  final String name;
  final String photo;
  final String address;
  final String rating;
  final String cuisine;
  final String description;
  final String phone;
  final String ranking_position;
  final String web_url;
  final String website;
  final String city;

  Restaurant({
    required this.name,
    required this.photo,
    required this.address,
    required this.rating,
    required this.cuisine,
    required this.description,
    required this.phone,
    required this.ranking_position,
    required this.web_url,
    required this.website,
    required this.city,
  });

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      name: map['name'] as String? ?? 'Unknown Name',
      photo: map['photo'] ,
      rating: map['rating'] as String? ?? 'N/A',
      address: map['address'] as String? ?? 'Unknown Address',
      cuisine: map['cuisine'],
      description: map['description'],
      phone: map['phone'],
      ranking_position: map['ranking_position'],
      web_url: map['web_url'],
      website: map['website'],
      city: map['city'],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'photo': photo,
      'name': name,
      'address': address,
      'rating': rating,
      'cuisine': cuisine,
      'description': description,
      'phone': phone,
      'ranking_position': ranking_position,
      'web_url': web_url,
      'website': website,
      'city': city,
    };
  }
}
