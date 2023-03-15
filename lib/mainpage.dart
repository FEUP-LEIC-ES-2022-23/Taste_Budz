import 'package:flutter/material.dart';

void main() => runApp(TasteBudzApp());

class TasteBudzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TasteBudz',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TasteBudz'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for restaurants',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilterChip(
                label: Text('Price'),
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: Text('Rating'),
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: Text('Distance'),
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: Text('Cuisine'),
                onSelected: (isSelected) {},
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: Center(
                child: Text('Map view goes here'),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Featured Restaurants',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.restaurant),
                  title: Text('Restaurant ${index + 1}'),
                  subtitle: Text('Description of restaurant ${index + 1}'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantPage(),
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

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Name'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Restaurant Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star_border),
              SizedBox(width: 10),
              Text('4.0 (500+ ratings)'),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: Center(
                child: Text('Restaurant details go here'),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Leave a review'),
            onPressed: () {},
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
