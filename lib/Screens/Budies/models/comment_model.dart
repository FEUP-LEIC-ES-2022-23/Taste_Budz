class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/Joana.jpg',
    text: 'I went to this amazing Italian restaurant last night and had the best pasta of my life!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/Joana.jpg',
    text: "I completely agree! That dish was so delicious, I'm already planning my next visit.",
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/Joana.jpg',
    text: "The pasta was definitely the standout dish, but I also loved the appetizers we had.",
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/Joana.jpg',
    text: "I'm so jealous! I've been wanting to try that restaurant for ages.",
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/Joana.jpg',
    text: "I've heard great things about their pasta, but I'm not usually a big fan of Italian food. Maybe I'll give it a try.",
  ),
];
