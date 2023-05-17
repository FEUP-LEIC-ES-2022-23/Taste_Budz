import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Perfil/page/profile_page.dart';

import 'details.dart';

class Tastewish extends StatefulWidget {
  @override
  _TastewishState createState() => _TastewishState();
}

class _TastewishState extends State<Tastewish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFB080),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {Navigator.pop(context);},
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Taste',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
                SizedBox(width: 0),
                Text('Wish',
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Colors.white,
                        fontSize: 30.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem("assets/images/restaurante1.jpg", 'MUU Steakhouse', '4.9 (120 reviews)'),
                          _buildFoodItem("assets/images/restaurante1.jpg", 'MUU Steakhouse', '4.9 (120 reviews)'),
                          _buildFoodItem("assets/images/restaurante1.jpg", 'MUU Steakhouse', '4.9 (120 reviews)'),
                          _buildFoodItem("assets/images/restaurante1.jpg", 'MUU Steakhouse', '4.9 (120 reviews)')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 20.0, top: 30.0),
        child: InkWell(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Hero(
                              tag: imgPath,
                              child: Image(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                                height: 90.0,
                                width: 90.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    foodName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        color: Colors.grey
                                    )
                                )

                              ]
                          )
                        ]
                    )
                ),
              ],
            )
        ));
  }
}