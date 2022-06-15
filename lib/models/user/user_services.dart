import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lp/models/user/users_local.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
FirebaseFirestore _firestore = FirebaseFirestore.instance;

class UserServices {
  UserLocal? userLocal;
  //metodo para realizar a autenticação no fire base com email e senha
  Future<void> signIn(UserLocal userLocal) async {
    try {
      User? user = (await _auth.signInWithEmailAndPassword(
              email: userLocal.email!, password: userLocal.password!))
          .user;
      this.userLocal = userLocal;
      this.userLocal!.id = user!.uid;
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }

  //metodo para registrar o usuario no firebase
  signUp(UserLocal userLocal) async {
    try {
      User? user = (await _auth.createUserWithEmailAndPassword(
              email: userLocal.email!, password: userLocal.password!))
          .user;
      this.userLocal = userLocal;
      this.userLocal!.id = user!.uid;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
