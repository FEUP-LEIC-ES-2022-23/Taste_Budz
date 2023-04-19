import 'package:flutter/material.dart';
import 'package:tastebudz/share_location.dart';
import 'enjoy.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 35,
            top: 120,
            width: 360,
            height: 318,
            child: Image.asset(
              'assets/images/location.JPG',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            top: 356,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  child: const Text(
                    'Share your location with us !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(50, 50, 77, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 25,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'To discover nearby restaurants, please provide your location.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(142, 142, 169, 1),
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.75,
                    ),
                  ),
                ),
                Container(
  margin: const EdgeInsets.only(top: 50),
  decoration: BoxDecoration(
    color: const Color.fromRGBO(255, 255, 255, 1),
    borderRadius: BorderRadius.circular(16),
  ),
  child: Column(
    children: [
      Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      child: Column(

        children: [
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Androidlarge39Widget();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),
 child: const Text(
              'Enter a new location',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(237, 111, 92, 1),
                fontFamily: 'Mulish',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1.375,
              ),
            ),
        ),

Container(
decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Column(

        children: [
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const EnjoyScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFB080),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),

            ),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
          ),
 child: const Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.375,
                    ),
                  ),
        ),

              ],
            ),
          ),
        ],
      ),
      ),
    ],
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