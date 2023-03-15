import 'package:flutter/material.dart';

class RestaurantRecommendationApp extends StatefulWidget {
  @override
  _RestaurantRecommendationAppState createState() =>
      _RestaurantRecommendationAppState();
}

class _RestaurantRecommendationAppState
    extends State<RestaurantRecommendationApp> {
  TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> restaurants = [    {"name": "Restaurant A", "rate": 4.5},    {"name": "Restaurant B", "rate": 4.2},    {"name": "Restaurant C", "rate": 4.8},    {"name": "Restaurant D", "rate": 4.0},    {"name": "Restaurant E", "rate": 3.9},  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Recommendation"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search for a restaurant",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(restaurants[index]["name"]),
                  subtitle: Text("Rate: ${restaurants[index]["rate"]}"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantDetailPage(
                          name: restaurants[index]["name"],
                          rate: restaurants[index]["rate"],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantDetailPage extends StatelessWidget {
  final String name;
  final double rate;

  RestaurantDetailPage({required this.name, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Rate: $rate",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Reviews:",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Review 1"),
                    subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget consequat justo, vel lacinia quam."),
                  ),
                  ListTile(
                    title: Text("Review 2"),
                    subtitle: Text("Sed et libero quis eros bibendum consectetur ut sit amet felis."),
                  ),
                  ListTile(
                    title: Text("Review 3"),
                    subtitle: Text("Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque porttitor, purus in cursus ultricies, odio eros maximus augue, at venenatis risus leo a eros."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
