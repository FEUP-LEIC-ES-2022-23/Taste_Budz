// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/images/restaurante1.jpg",
    rating: 4.2,
    location: "St. Regis Bora Bora",
  ),
    RecommendedPlaceModel(
      image: "assets/images/restaurante1.jpg",
    rating: 4.1,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/restaurante1.jpg",
    rating: 3.8,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/restaurante1.jpg",
    rating: 4.8,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/restaurante1.jpg",
    rating: 3.4,
    location: "St. Regis Bora Bora",
  ),
];
