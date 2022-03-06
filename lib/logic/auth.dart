import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future<bool> login(
      {required String username, required String password}) {
    return auth
        .signInWithEmailAndPassword(email: username, password: password)
        .then((user) {
      return true;
    }).catchError((error) {
      throw false;
    });
  }
}
