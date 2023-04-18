import 'package:flutter/material.dart';

import 'Screens/Login/login_screen.dart';
import 'mainpage.dart';

class EnjoyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 120,
              width: 360,
              height: 318,
              child: Image.asset(
                'assets/images/enjoy.JPG',
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
                    margin: EdgeInsets.only(top: 150),
                    child: Text(
                      'Enjoy and Review !',
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
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Enjoy great food, review and share your experience.',
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
  margin: EdgeInsets.only(top: 80),
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
    borderRadius: BorderRadius.circular(16),
  ),
  child: Column(
    children: [
Container(
decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          
          children: [
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return mainpage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFB080),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                     
              ),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
            ),
 child: Text(
                      'Start',
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
    );
        ;
  }
}