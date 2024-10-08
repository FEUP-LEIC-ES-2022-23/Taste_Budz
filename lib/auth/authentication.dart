import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Authentication {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static String uEmail = "";
  static String uPassword = "";

  static Future<String> register(String email, String password) async {
    await Firebase.initializeApp();
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e.toString();
    }
    return "successful-register";
  }

  static Future<String> login(String email, String password) async {
    await Firebase.initializeApp();
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      uEmail = email;
      uPassword = password;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }

      return e.code;
    }
    return "successful-login";
  }

  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  static Future<String> changeEmail(String newEmail) async {
    try {
      await Firebase.initializeApp();

      uEmail = newEmail;
      User? currentUser = auth.currentUser;
      await currentUser?.updateEmail(newEmail);
      await currentUser?.reload();

      return "successful-change-email";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
      return e.code;
    }
  }


  static Future<bool> verifyPassword(String currentPassword) async {
    try {
      await Firebase.initializeApp();

      User? currentUser = auth.currentUser;

      AuthCredential credential =
      EmailAuthProvider.credential(email: currentUser!.email!, password: currentPassword);
      await currentUser?.reauthenticateWithCredential(credential);

      return true;

    } catch (e) {
      return false;
    }
  }
}
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Logout method
  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Error during logout: $e');
      // Handle any errors that occurred during logout
    }
  }
}