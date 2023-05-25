import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addRestaurant(Restaurant restaurant) async {
    CollectionReference restaurantsCollection = _db.collection('restaurants');
    await restaurantsCollection.add({
      'name': restaurant.name,
      'address': restaurant.address,
      'cuisineType': restaurant.cuisineType,
    });
  }

  Future<List<Restaurant>> getRestaurants() async {
    CollectionReference restaurantsCollection = _db.collection('restaurants');
    QuerySnapshot snapshot = await restaurantsCollection.get();
    return snapshot.docs.map((doc) {
      return Restaurant(
        name: doc['name'],
        address: doc['address'],
        cuisineType: doc['cuisineType'],
      );
    }).toList();
  }
}

class Restaurant {
  final String name;
  final String address;
  final String cuisineType;

  Restaurant({required this.name, required this.address, required this.cuisineType});
}
