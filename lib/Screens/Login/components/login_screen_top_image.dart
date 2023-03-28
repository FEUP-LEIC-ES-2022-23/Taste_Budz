import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginScreenTopText extends StatelessWidget {
  const LoginScreenTopText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[Text('Login!', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(50, 50, 77, 1),
        fontFamily: 'DM Sans',
        fontSize: 22,
        letterSpacing: -0.5,
        fontWeight: FontWeight.bold,
        height: 1.3636363636363635
      ),), SizedBox(height : 30),
      Column(
  children: [
    Text(''),
    SizedBox(height: 23),
    Text(''),
  ],
)
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