import 'package:flutter/material.dart';
import 'package:tastebudz/enjoy.dart';

class Androidlarge39Widget extends StatefulWidget {
  @override
  _Androidlarge39WidgetState createState() => _Androidlarge39WidgetState();
}

class _Androidlarge39WidgetState extends State<Androidlarge39Widget> {
  @override
  Widget build(BuildContext context) {
    final titleText = 'Share your location with us !';
    final titleTextStyle = TextStyle(
      color: Color.fromRGBO(50, 50, 77, 1),
      fontFamily: 'DM Sans',
      fontSize: 24,
      letterSpacing: -0.5,
      fontWeight: FontWeight.bold,
      height: 1.25,
    );
    final descriptionText =
        'Please enter your location or allow access to your location to find all restaurants that are near you ';
    final descriptionTextStyle = TextStyle(
      color: Color.fromRGBO(142, 142, 169, 1),
      fontFamily: 'Mulish',
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1.75,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 100),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    titleText,
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 14),
                  Text(
                    descriptionText,
                    textAlign: TextAlign.center,
                    style: descriptionTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 71, 0.03999999910593033),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Current Location',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(33, 33, 52, 1),
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.375,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    '794 8th Ave, New York',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 142, 169, 1),
                                      fontFamily: 'Mulish',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1.7142857142857142,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: Color.fromRGBO(192, 192, 207, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFB080),
                              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 71, 0.03999999910593033),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'My home',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(33, 33, 52, 1),
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.375,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    '284 2th Ave, New York',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 142, 169, 1),
                                      fontFamily: 'Mulish',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1.7142857142857142,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: Color.fromRGBO(192, 192, 207, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 71, 0.03999999910593033),
                    offset: Offset(0, 4),
                    blurRadius: 20,
                  ),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Sushi Bar',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(33, 33, 52, 1),
                                  fontFamily: 'Mulish',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.375,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    '423 8th Ave, New York',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(142, 142, 169, 1),
                                      fontFamily: 'Mulish',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1.7142857142857142,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: Color.fromRGBO(192, 192, 207, 1),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height* 0.09,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width* 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) {
                    return EnjoyScreen();
                  },
                  ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB080),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],


        ),
      ),
    );
  }
}

