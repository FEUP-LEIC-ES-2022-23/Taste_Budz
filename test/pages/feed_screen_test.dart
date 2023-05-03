import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Budies/models/post_model.dart';
import 'package:tastebudz/Screens/Budies/screens/feed_screen.dart';

void main() {
  testWidgets('Test build post method', (WidgetTester tester) async {
    // Create a list of mock posts
    final posts = [
      Post(
        authorName: 'John Doe',
        authorImageUrl: 'assets/images/user1.png',
        timeAgo: '5 min',
        imageUrl: 'assets/images/food1.jpg',

      ),
      Post(
        authorName: 'Jane Doe',
        authorImageUrl: 'assets/images/user2.png',
        timeAgo: '10 min',
        imageUrl: 'assets/images/food2.jpg',
      ),
    ];

    // Create a widget tree with the FeedScreen and render it
    await tester.pumpWidget(MaterialApp(
      home: FeedScreen(),
    ));

    // Find the first post widget and check that its content matches the first post in the list
    expect(find.text(posts[0].authorName), findsOneWidget);
    expect(find.text(posts[0].timeAgo), findsOneWidget);
  });
}
