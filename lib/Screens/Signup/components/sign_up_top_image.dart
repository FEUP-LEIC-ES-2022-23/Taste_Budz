import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
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
        
        children: <Widget>[Text('Getting started!', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'DM Sans',
        fontSize: 22,
        letterSpacing: -0.5,
        fontWeight: FontWeight.bold,
        height: 1.3636363636363635
      ),), SizedBox(height : 14),
Text('Look like you are new to us! Create an account for a complete experience.', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Mulish',
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 1.75
      ),),
      Column(
  children: [
    Text(''),
    SizedBox(height: 10),
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