class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    required this.authorName,
    required this.authorImageUrl,
    required this.timeAgo,
    required this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/Joana.jpg',
    timeAgo: '5 min',
    imageUrl: 'assets/images/food.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/Joana.jpg',
    timeAgo: '10 min',
    imageUrl: 'assets/images/food.jpg',
  ),
];

final List<String> stories = [
  'assets/images/perfill.JPG',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
  'assets/images/Joana.jpg',
];
