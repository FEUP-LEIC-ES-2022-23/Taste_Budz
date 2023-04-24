import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Signup/signup_form.dart';

import '../../firebase/auth.dart';
import '../../components/already_have_an_account_acheck.dart';
import '../../components/constants.dart';
import '../Welcome/location.dart';
import '../Signup/signup_screen.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  String? error_message;
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();


  Future<void> signIn() async {
    try {
      await Auth().signIn(
        email_controller.text,
        password_controller.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        error_message = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        child: Column(
          children: [
            Padding
              (
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.01, vertical: height * .15),
              child: SafeArea(
                child: Container(
                    child: Column(children: <Widget>[
                      Text(
                        'Welcome back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.3636363636363635,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * .01
                        ),
                      ),
                    Text(
                        'Please log in to discover new and exciting restaurants in your area.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Mulish',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 1.75,
                        ),
                    ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height * .04
                          ),
                        ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        child: TextField(
                          textAlign: TextAlign.left,
                          controller: email_controller,
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: kPrimaryColor,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(),
                            filled: true,
                            errorText: error_message,
                            fillColor: Colors.white,
                            hintText: "Your email",
                            prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 255, 177, 128)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * .01
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        child: TextField(
                          controller: password_controller,
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: kPrimaryColor,
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(),
                            filled: true,
                            errorText: error_message,
                            fillColor: Colors.white,
                            hintText: "Your password",
                            prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 177, 128)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * .02
                        ),
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 0.3,
                        decoration: const
                        BoxDecoration(
                          color: Color.fromARGB(255, 255, 177, 128),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: TextButton(
                          onPressed: ()  {
                            signIn();
                            if (error_message == null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LocationScreen()),
                              );
                            }
                          },
                          child: Text(
                            'LOGIN',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                fontFamily: 'Mulish',
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * .046
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(width*0.05, height*0.05, width*0.05, height*0.05),
                        height: height * 0.04,
                        width: width * 0.6,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Mulish',
                                  fontSize: 14.5,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  (SignUpPageWidget())),
                                );
                              },
                              child: Text(
                                'Sign up!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 177, 128),
                                    fontFamily: 'Mulish',
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
