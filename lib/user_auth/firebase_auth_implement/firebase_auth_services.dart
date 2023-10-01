// ignore_for_file: camel_case_types, prefer_final_fields, unused_field

import 'package:firebase_auth/firebase_auth.dart';

class firebaseAuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailandPassword(String email ,String password) async{

    try{
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;

    } catch (e) {
      print('Some error Ocurred');

    }
    return null;



  }
    Future<User?> signInWithEmailandPassword(String email ,String password) async{

    try{
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;

    } catch (e) {
      print('Some error Ocurred');

    }
    return null;



  }


  



}