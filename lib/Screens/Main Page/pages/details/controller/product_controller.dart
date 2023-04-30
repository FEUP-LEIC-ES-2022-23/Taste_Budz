import 'dart:async';

class ProductController {
  bool isAddLoading = false;

  void addToCart(void Function() update) {
    isAddLoading = true;
    update();
    Timer(const Duration(seconds: 2), () {
      isAddLoading = false;
      update();
    });
  }
}

