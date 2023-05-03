import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Login/login_form.dart';
import '../../firebase/auth.dart';
import '../../components/constants.dart';
import '../Welcome/location.dart';

class SignUpPageWidget extends StatefulWidget {
  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  String? error_message;
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController display_name_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();
  final TextEditingController password_confirmation_controller = TextEditingController();
  final TextEditingController username_controller = TextEditingController();

  Future<void> signUp() async {
    try {
      await Auth().signUp(
        email_controller.text,
        password_controller.text,
      );
      error_message = null;
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
                        'Getting started!',
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
                        'Look like you are new to us! Create an account for a complete experience.',
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
                            hintText: "Your email",
                            prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 255, 177, 128)),
                            contentPadding: EdgeInsets.only(),
                            filled: true,
                            errorText: error_message,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
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
                            prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 177, 128)),
                            filled: true,
                            errorText: error_message,
                            fillColor: Colors.white,
                            hintText: "Your password",
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
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
                            signUp();
                            FirebaseAuth.instance
                                .authStateChanges()
                                .listen((User? user) {
                              if (user == null) {
                                print('User is currently signed out!');
                              } else {
                                print('User is signed in!');
                              }
                            }
                            );
                            if (error_message == null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LocationScreen()),
                              );
                            }
                          },
                          child: Text(
                            "SIGN UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
                              "Already have an account? ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
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
                                  MaterialPageRoute(builder: (context) => LoginPageWidget()),
                                );
                              },
                              child: Text(
                                'Login!',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 177, 128),
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
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