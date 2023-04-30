import 'dart:ui';

class Product {
  final String image, title;
  final int price, numOfReviews;
  final double rating;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.numOfReviews,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/restaurante1.png",
    title: "Abadia do Porto",
    price: 165,
    rating: 4,
    numOfReviews: 23,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/restaurante1.png",
    title: "Casual Henley Shirts",
    price: 99,
    rating: 3,
    numOfReviews: 12,
  ),
  Product(
    image: "assets/images/restaurante1.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: 5,
    numOfReviews: 56,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/restaurante1.png",
    title: "Casual Nolin",
    price: 149,
    rating: 4,
    numOfReviews: 34,
    bgColor: const Color(0xFFEEEEED),
  ),
];
