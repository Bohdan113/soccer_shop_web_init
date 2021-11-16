import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soccer_shop_web/services/user.dart';

class AuthService {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;


  Future<Users?> singInWithEmailAndPassword(String email,
      String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      var user = Users.fromFirebase(firebaseUser!);
      return user;
    } catch (error) {
      print('User $error');
      return null;
    }
  }

  Future<Users?> registerWithEmailAndPassword(String email,
      String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      var user = Users.fromFirebase(firebaseUser!);
      return user;
    } catch (e) {
      print('$e');
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();
  }

// Stream<Users?> get currentUser {
//   return _fAuth
//       .authStateChanges()
//       .map((User? user) => user != null ? Users.fromFirebase(user) :  null);
// }

}