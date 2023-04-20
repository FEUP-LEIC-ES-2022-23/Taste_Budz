import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../components/already_have_an_account_acheck.dart';
import '../../constants.dart';
import '../../location.dart';
import '../Login/login_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();


  Future<void> _signUpWithEmailAndPassword() async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email_controller.text.trim(),
        password: password_controller.text.trim(),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // Show an error message to the user if the password is too weak.
      } else if (e.code == 'email-already-in-use') {
        // Show an error message to the user if the email is already registered.
      }
    } catch (e) {
      // Show a generic error message to the user.
    }
  }
  @override
  void initState() {
    super.initState();
    // Initialize Firebase app
    Firebase.initializeApp();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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

          const SizedBox(height: 14),
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
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            controller: email_controller,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Your email",
              prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 255, 177, 128)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
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
                hintText: "Your name",
                prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 255, 255)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: password_controller,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Your password",
                prefixIcon: const Icon(Icons.lock, color: Color.fromARGB(255, 255, 177, 128)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationScreen()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 177, 128)),
            child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
