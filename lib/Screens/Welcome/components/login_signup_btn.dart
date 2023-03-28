
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';

import 'package:flutter/material.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Let’s Get Started !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(50, 50, 77, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 26,
                    letterSpacing: -0.5,
                    fontWeight: FontWeight.bold,
                    height: 1.3846153846153846,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(142, 142, 169, 1),
                    fontFamily: 'Mulish',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFB080),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),

            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 3),
          Container(
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 1,
              width: 100,
              color: Color.fromRGBO(220, 220, 228, 1),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'OR',
                    semanticsLabel: 'OR',
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 1,
              width: 100,
              color: Color.fromRGBO(220, 220, 228, 1),
            ),
          ],
        ),
      ),
    ],
  ),
)

    ],
  ),
),

          ElevatedButton(
  onPressed: () {
    // Do something when the button is pressed
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        'assets/images/gmail.png',
        height: 24,
      ),
      SizedBox(width: 12),
      Text(
        "Continue with Gmail",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
Container(
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 1,
              width: 100,
              color: Color.fromRGBO(220, 220, 228, 1),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'OR',
                    semanticsLabel: 'OR',
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 1,
              width: 100,
              color: Color.fromRGBO(220, 220, 228, 1),
            ),
          ],
        ),
      ),
    ],
  ),
)

    ],
  ),
),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
                side: BorderSide(
                  color: Colors.grey,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
            child: Text(
              "Log In",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ]
      ),
    );
  }
}

