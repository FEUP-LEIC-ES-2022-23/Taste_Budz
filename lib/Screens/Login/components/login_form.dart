import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../../location.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
  keyboardType: TextInputType.emailAddress,
  textInputAction: TextInputAction.next,
  cursorColor: kPrimaryColor,
  onSaved: (email) {},
  decoration: InputDecoration(
    hintText: "Your email",
    prefixIcon: Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Icon(
        Icons.person,
        color: Color.fromARGB(255, 255, 177, 128),
      ),
    ),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
),




Padding(
  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
  child: TextFormField(
    textInputAction: TextInputAction.done,
    obscureText: true,
    cursorColor: kPrimaryColor,
    decoration: InputDecoration(
      hintText: "Your password",
      prefixIcon: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Icon(
          Icons.lock,
          color: Color.fromARGB(255, 255, 177, 128),
        ),
      ),
      
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        
      ),
    ),
  ),
),

const SizedBox(height: defaultPadding),
Hero(
  tag: "login_btn",
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LocationScreen();
          },
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 255, 177, 128),
    ),
    child: Text(
      "Login".toUpperCase(),
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
),

          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}