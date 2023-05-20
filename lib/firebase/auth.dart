import 'package:firebase_auth/firebase_auth.dart';


class Auth {
  late FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseAuth get auth => _auth;

  User? get user => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  set auth(FirebaseAuth auth) {
    _auth  = auth;
  }

  Future<void> signIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signUp(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    return _auth.signOut();
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


