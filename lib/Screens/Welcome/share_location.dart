import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Welcome/enjoy.dart';

class Androidlarge39Widget extends StatefulWidget {
  const Androidlarge39Widget({super.key});

  @override
  _Androidlarge39WidgetState createState() => _Androidlarge39WidgetState();
}

class _Androidlarge39WidgetState extends State<Androidlarge39Widget> {
  String _city = '';
  @override
  Widget build(BuildContext context) {

    const titleText = 'Share your location with us !';
    final titleTextStyle = TextStyle(
      color: Color.fromRGBO(50, 50, 77, 1),
      fontFamily: 'DM Sans',
      fontSize: 24,
      letterSpacing: -0.5,
      fontWeight: FontWeight.bold,
      height: 1.25,
    );
    final descriptionText =
        'Let us help you find great dining options in your area. Please enter your location.';
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the city you are in:',
                style: TextStyle(
                  color: Color.fromRGBO(142, 142, 169, 1),
                  fontFamily: 'Mulish',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.75,
                )
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'City',
                hintText: 'e.g. Porto',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                    width: 2.0,
                  ),
                ),
              ),
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              onChanged: (value) {
                setState(() {
                  _city = value;
                });
              },
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height* 0.34,
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
    ]
    )
    )
    );
  }
}

