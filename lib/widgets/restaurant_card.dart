import 'package:flutter/material.dart';
import 'package:tastebudz/firebase/database.dart';
import 'package:tastebudz/model/restaurants.dart';

import '../model/review.dart';

class RestaurantCard extends StatefulWidget{
  final Restaurant restaurant;

  const RestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RestaurantCard(restaurant: widget.restaurant),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.restaurant.restaurant_name,
                      style: TextStyle(fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Visibility(
                      visible: widget.restaurant.restaurant_address != null && widget.restaurant.restaurant_address.isNotEmpty,
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              widget.restaurant.restaurant_address,
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    FutureBuilder<List<Review>>(
                        future: widget.restaurant.reviews,
                        builder: (context, snapshot) {
                          if (snapshot.hasData){
                            List<Review> rendReviews = snapshot.data!;
                            return Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow[700],),
                                SizedBox(width: 8.0),
                                Text(
                                  widget.restaurant.rating,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  '(${rendReviews.length} reviews)',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            );
                          }
                          else if (snapshot.hasError) {
                            print('You have an error! ${snapshot.error.toString()}');
                            return Text('Something went wrong!');
                          }
                          else {
                            return Center(child: LinearProgressIndicator(),);
                          }
                        }
                    ),
                  ],
                ),
              ),
              Container(
                height: 125,
                width: 125,
                child: Image.network(widget.restaurant.restaurant_photo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}