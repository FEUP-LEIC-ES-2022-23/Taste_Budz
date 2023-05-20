
// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Login/login_form.dart';
import '../../components/constants.dart';
import '../Welcome/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpPageWidget extends StatefulWidget {
  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  String? error_message;
  TextEditingController email_controller = TextEditingController();
  TextEditingController display_name_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController password_confirmation_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();

  Future<void> signUp() async {
    try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email_controller.text.trim(),
            password: password_controller.text.trim()
        ).then((result) async {

          var usersDB = FirebaseFirestore.instance.collection('users');

          var ref = usersDB.doc(username_controller.text.trim());

          ref.collection('temp');

          await ref.set({
            'uid': result.user!.uid,
            'username': username_controller.text.trim(),
            'name': display_name_controller.text.trim(),
          });

          result.user!.updateDisplayName(username_controller.text.trim());

        });

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const LocationScreen()
            )
        );
        /*
        showDialog(context: context,
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

    } on FirebaseAuthException catch (exception) {
      if (exception.message == 'invalid-email') {
        print('Invalid Email');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Column(
        children: [
          Padding
            (
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.01),
            child: SafeArea(
              child: Column(children: <Widget>[
                SizedBox(
                  height: height * 0.15,
                ),

                const Text(
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
                const Text(
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
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.8,
                  child: TextField(
                    textAlign: TextAlign.left,
                    controller: email_controller,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      hintText: "Your email",
                      prefixIcon: const Icon(Icons.mail, color: Color.fromARGB(255, 255, 177, 128)),
                      contentPadding: const EdgeInsets.only(),
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
                SizedBox(
                  height: height * 0.06,
                  width: width * 0.8,
                  child: TextField(
                    controller: display_name_controller,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPrimaryColor,

                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(),
                      filled: true,
                      errorText: error_message,
                      fillColor: Colors.white,
                      hintText: "Your name",
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
                    controller: username_controller,
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(),
                      filled: true,
                      errorText: error_message,
                      fillColor: Colors.white,
                      hintText: "Your username",
                      prefixIcon: const Icon(Icons.edit, color: Color.fromARGB(255, 255, 177, 128)),
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
                    },
                    child: const Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                        child: const Text(
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}