// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Signup/signup_form.dart';
import '../../firebase/auth.dart';
import '../../components/constants.dart';
import '../Welcome/location.dart';

class LoginPageWidget extends StatefulWidget {

  const LoginPageWidget({Key? key}) : super(key : key);

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  String? error_message;
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();


  Future<void> signIn() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email_controller.text.trim(),
          password: password_controller.text.trim());
      user = userCredential.user;
      if (user != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const LocationScreen()));

        /*showDialog(context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  alignment: Alignment.topCenter,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  backgroundColor: Colors.green,
                  content:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Success!",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ],
                  )
              );
            }
        );*/
      }
    } on FirebaseAuthException catch (exception) {

    }
  }

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: SingleChildScrollView(

      child: Column(
        children: [
          Padding
            (
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.01, vertical: height * .15),
            child: SafeArea(
              child: Column(
                  children: <Widget>[
                const Text(
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
              const Text(
                  'Please log in to discover new and exciting restaurants.dart in your area.',
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
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.8,
                  child: TextField(
                    textAlign: TextAlign.left,
                    controller: email_controller,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(),
                      filled: true,
                      errorText: error_message,
                      fillColor: Colors.white,
                      hintText: "Your email",
                      prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 255, 177, 128)),
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
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.8,
                  child: TextField(
                    controller: password_controller,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPrimaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(),
                      filled: true,
                      errorText: error_message,
                      fillColor: Colors.white,
                      hintText: "Your password",
                      prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 177, 128)),
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
                      signIn();
                    },
                    child: const Text(
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
                      const Text(
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
                        child: const Text(
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
              ]),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
