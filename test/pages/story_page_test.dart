import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Budies/screens/Stories/stories/story_1.dart';
import 'package:tastebudz/Screens/Budies/screens/Stories/stories/story_2.dart';
import 'package:tastebudz/Screens/Budies/screens/Stories/stories/story_3.dart';
import 'package:tastebudz/Screens/Budies/screens/Stories/storypage.dart';

void main() {
  testWidgets('StoryPage should show the first story on launch', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: StoryPage(),
      ),
    );

    final MyStory1 story1 = tester.widget(find.byType(MyStory1));
    expect(story1, isNotNull);

    final MyStory2 story2 = tester.widget(find.byType(MyStory2));
    expect(story2, isNull);

    final MyStory3 story3 = tester.widget(find.byType(MyStory3));
    expect(story3, isNull);
  });

  testWidgets('StoryPage should show the second story when user taps on right half of the screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: StoryPage(),
      ),
    );

    await tester.tapAt(Offset(300, 300));
    await tester.pumpAndSettle();

    final MyStory1 story1 = tester.widget(find.byType(MyStory1));
    expect(story1, isNotNull);

    final MyStory2 story2 = tester.widget(find.byType(MyStory2));
    expect(story2, isNotNull);

    final MyStory3 story3 = tester.widget(find.byType(MyStory3));
    expect(story3, isNull);
  });

  testWidgets('StoryPage should show the previous story when user taps on left half of the screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: StoryPage(),
      ),
    );

    await tester.tapAt(Offset(100, 300));
    await tester.pumpAndSettle();

    final MyStory1 story1 = tester.widget(find.byType(MyStory1));
    expect(story1, isNotNull);

    final MyStory2 story2 = tester.widget(find.byType(MyStory2));
    expect(story2, isNull);

    final MyStory3 story3 = tester.widget(find.byType(MyStory3));
    expect(story3, isNull);
  });

  testWidgets('StoryPage should return to homepage after finishing the last story', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: StoryPage(),
      ),
    );

    await tester.tapAt(Offset(300, 300));
    await tester.pumpAndSettle();

    await tester.tapAt(Offset(300, 300));
    await tester.pumpAndSettle();

    await tester.tapAt(Offset(300, 300));
    await tester.pumpAndSettle();

    expect(find.byType(StoryPage), findsNothing);
  });
}
