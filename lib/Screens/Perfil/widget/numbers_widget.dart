import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Perfil/page/friends.dart';

import '../page/tastewish.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '13', 'Tastewish'),
          buildDivider(),
          buildButtonn(context, '5', 'Reviews'),
          buildDivider(),
          buildButtonnn(context, '7', 'FoodieBudz'),
        ],
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Tastewish()),
        );},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Container(
          width: 103.384765625,
          height: 74,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 97.30769348144531,
                  height: 74,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color : Color.fromRGBO(237, 237, 237, 0.5),
                  ),
                ),
              ),
              Positioned(
                top: 14,
                left: 11,
                child: Container(
                  width: 92.384765625,
                  height: 36,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 24,
                        left: 0,
                        child: Text(
                          text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontSize: 14.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          value,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 31, 69, 1),
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  Widget buildButtonn(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Container(
          width: 103.384765625,
          height: 74,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 97.30769348144531,
                  height: 74,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color : Color.fromRGBO(255, 176, 128, 0.8),
                  ),
                ),
              ),
              Positioned(
                top: 14,
                left: 11,
                child: Container(
                  width: 92.384765625,
                  height: 36,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 24,
                        left: 0,
                        child: Text(
                          text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 14.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          value,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  Widget buildButtonnn(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Friends()),
        );},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Container(
          width: 103.384765625,
          height: 74,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 14,
                left: 11,
                child: Container(
                  width: 92.384765625,
                  height: 36,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 24,
                        left: 0,
                        child: Text(
                          text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontSize: 14.2,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          value,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 31, 69, 1),
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
