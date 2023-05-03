import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Budies/models/comment_model.dart';
import 'package:tastebudz/Screens/Budies/models/post_model.dart';
import 'package:tastebudz/Screens/Budies/screens/view_post_screen.dart';

void main() {
  group('ViewPostScreen', () {
    late List<Comment> comments;
    late Post post;

    setUp(() {
      comments = [
        Comment(
          authorName: 'Alice',
          authorImageUrl: 'assets/images/user1.png',
          text: 'Comment 1',
        ),
        Comment(
          authorName: 'Bob',
          authorImageUrl: 'assets/images/user2.png',
          text: 'Comment 2',
        ),
        Comment(
          authorName: 'Charlie',
          authorImageUrl: 'assets/images/user3.png',
          text: 'Comment 3',
        ),
      ];
      post = Post(
        authorName: 'John Doe',
        authorImageUrl: 'assets/images/user4.png',
        timeAgo: '30 min ago',
        imageUrl: 'assets/images/post1.png',
      );
    });

    testWidgets('should build comment widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ViewPostScreen(post: post),
          ),
        ),
      );

      final commentWidget = tester.widget<Padding>(
        find.descendant(
          of: find.byType(ListTile),
          matching: find.byType(Padding),
        ).at(0),
      );
      final commentLeadingWidget =
      commentWidget.child as Container; // Leading widget of comment
      final avatarWidget =
      commentLeadingWidget.child as CircleAvatar; // Avatar in comment
      final imageWidget = avatarWidget.child as ClipOval; // Image in avatar
      final imageAsset = imageWidget.child as Image; // AssetImage in image
      final titleWidget =
      commentWidget.child as Text; // Author name in comment
      final subtitleWidget =
      commentWidget.child as Text; // Comment text in comment

      expect(commentWidget, isA<Padding>());
      expect(commentLeadingWidget, isA<Container>());
      expect(avatarWidget, isA<CircleAvatar>());
      expect(imageWidget, isA<ClipOval>());
      expect(imageAsset.image, isA<AssetImage>());
      expect(titleWidget, isA<Text>());
      expect(subtitleWidget, isA<Text>());

      // Check if values are correct
      expect(
        (avatarWidget as BoxDecoration).color,
        Colors.white,
      );
      expect(imageAsset.image, comments[0].authorImageUrl);
      expect(titleWidget.data, comments[0].authorName);
      expect(subtitleWidget.data, comments[0].text);
    });
  });
}
