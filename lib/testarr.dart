import 'package:flutter/material.dart';

void main() {
  runApp(RestaurantRecommendationApp());
}

class RestaurantRecommendationApp extends StatefulWidget {
  @override
  _RestaurantRecommendationAppState createState() =>
      _RestaurantRecommendationAppState();
}

class _RestaurantRecommendationAppState
    extends State<RestaurantRecommendationApp> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Pizzeria Uno',
      'rating': 4.5,
      'image': 'https://picsum.photos/id/237/200/300',
      'location': '123 Main St',
    },
    {
      'name': 'Burger Joint',
      'rating': 4.2,
      'image': 'https://picsum.photos/id/238/200/300',
      'location': '456 Elm St',
    },
    {
      'name': 'Taco Palace',
      'rating': 3.9,
      'image': 'https://picsum.photos/id/239/200/300',
      'location': '789 Oak St',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Restaurant Recommendation',
        home: Scaffold(
        appBar: AppBar(
        title: Text('Restaurant Recommendation'),
    ),
    body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    SizedBox(height: 20),
    TextField(
    controller: searchController,
    decoration: InputDecoration(
    hintText: 'Search for a restaurant...',
    contentPadding:
    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    ),
    ),
    SizedBox(height: 20),
    Expanded(
    child: ListView.builder(
    itemCount: restaurants.length,
    itemBuilder: (BuildContext context, int index) {
    final restaurant = restaurants[index];
    return GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => RestaurantDetailPage(
    name: restaurant['name'],
    rating: restaurant['rating'],
    image: restaurant['image'],
    location: restaurant['location'],
    ),
    ),
    );
    },
    child: Container(
    margin: EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 10,
    ),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 5,
    offset: Offset(0, 3),
    ),
    ],
    ),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Image.network(
    restaurant['image'],
    width: 80,
    height: 80,
    fit: BoxFit.cover,
    ),
    SizedBox(width: 20),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    restaurant['name'],
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 5),
    Row(
    children: [
    Icon(
    Icons.star,
    color: Colors.orange,
    ),
    SizedBox(width: 5),
    Text(
    restaurant['rating'].toString(),
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    ),
    ),
    ],
    ),
    SizedBox(height: 5),
    Text(
    restaurant['location'],
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
    ],
    ),
    ],
    ),
    ),
    );
    },
    ),
    ),
    ],
    ),
        ),
    );
  }
}

class RestaurantDetailPage extends StatelessWidget {
  final String name;
  final double rating;
  final String image;
  final String location;

  const RestaurantDetailPage({
    Key? key,
    required this.name,
    required this.rating,
    required this.image,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            image,
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 5),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Description:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
