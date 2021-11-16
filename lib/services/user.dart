import 'package:firebase_auth/firebase_auth.dart';

class Users{
  String? id;

  Users.fromFirebase(User fUser){
    id = fUser.uid;
  }
}