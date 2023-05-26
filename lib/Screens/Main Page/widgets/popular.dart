import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tastebudz/Screens/Main Page/models/popular_model.dart';
import 'package:tastebudz/Screens/Perfil/page/details.dart';
import '../../../firebase/database_handler.dart';
import '../../../model/restaurants.dart';
import '../models/Product.dart';
import '../pages/details/view/product_details.dart';

class RecommendedPlaces extends StatefulWidget {

  @override
  _RecommendedPlacesState createState() => _RecommendedPlacesState();
}

class _RecommendedPlacesState extends State<RecommendedPlaces> {
  List<Restaurant> restaurants = [];
  DatabaseHandler databaseHandler = DatabaseHandler();

  @override
  void initState() {
    super.initState();
    fetchRestaurants();
  }

  void fetchRestaurants() async {
    print('Fetching restaurants...');
    try {
      List<Restaurant> fetchedRestaurants = await databaseHandler.getAllRestaurants();
      print('Fetched ${fetchedRestaurants.length} restaurants');
      setState(() {
        restaurants = fetchedRestaurants;
      });
    } catch (error) {
      print('Error fetching restaurants: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductDetailsView();
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          restaurant.photo,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              restaurant.name,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          Text(
                            restaurant.rating,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            color: Colors.orangeAccent,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            restaurant.city,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
