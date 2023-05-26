import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/restaurants.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseHandler {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference restaurantsCollection =
  FirebaseFirestore.instance.collection('restaurants');

  Future<List<Restaurant>> getAllRestaurants() async {
    QuerySnapshot snapshot = await restaurantsCollection.get();
    return _convertSnapshotToRestaurantList(snapshot);
  }

  List<Restaurant> _convertSnapshotToRestaurantList(QuerySnapshot snapshot) {
    return snapshot.docs.map((DocumentSnapshot document) {
      return Restaurant.fromMap(document.data() as Map<String, dynamic>);
    }).toList();
  }

// Rest of the methods remain the same
}

