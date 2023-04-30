// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tastebudz/Screens/Main Page/pages/details/controller/product_controller.dart';
import 'package:tastebudz/Screens/Main Page/pages/details/model/sm_product_model.dart';
import 'package:tastebudz/Screens/Main Page/pages/details/utils/color.dart';
import 'package:tastebudz/Screens/mainpage.dart';

class ProductDetailsView extends StatefulWidget {
  ProductDetailsView({Key? key}) : super(key: key);

  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final ProductController productController = Get.put(ProductController());
  bool isFavourite = false; // Add a boolean state to track if the heart icon is filled or not

  final List<SmProduct> smProducts = [
    SmProduct(image: "assets/images/restaurante1.jpg"),
    SmProduct(image: "assets/images/restaurante1.jpg"),
    SmProduct(image: "assets/images/restaurante1.jpg",),
    SmProduct(image: "assets/images/restaurante1.jpg",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => mainpage()),
            );
          },
          icon: const Icon(
            Ionicons.chevron_back,
            color: Colors.black,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              setState(() { // Update the state of isFavourite on tap
                isFavourite = !isFavourite;
              });
            },
            icon: Icon( // Use a ternary operator to display a different icon based on the state of isFavourite
              isFavourite ? Ionicons.heart : Ionicons.heart_outline,
              color: isFavourite ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
      Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: DecorationImage(
                  image: AssetImage('assets/images/restaurante1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    ),

    Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Terra Nova',
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '5k+ Rating',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Text(
                          'Neste restaurante de eleição para muitos, onde a sofisticação e a exigência são saboreadas em cada garfada, um dos pratos mais conceituados de Terra é o Bife Welligton, que corresponde a uma boa peça de carne, envolto de massa folhada e servido com arroz. Uma opção verdadeiramente extraordinária.',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          'Photos',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: smProducts.length,
                            itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.only(right: 6),
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image(
                                  height: 70,
                                  image: AssetImage(smProducts[index].image),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
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
