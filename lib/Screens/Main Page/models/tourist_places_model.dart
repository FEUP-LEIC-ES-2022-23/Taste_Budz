// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Breakfast", image: "assets/icons/mountain.png"),
  TouristPlacesModel(name: "Lunch", image: "assets/icons/beach.png"),
  TouristPlacesModel(name: "Dinner", image: "assets/icons/forest.png"),
  TouristPlacesModel(name: "Snacks", image: "assets/icons/city.png"),
];
