//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/authentication/user_model.dart';

var verificationId = '';

class AuthRepo {
  const AuthRepo(this._auth);
  final FirebaseAuth _auth;
  //to check changes in user stream
  Stream<User?> get authStateChange => _auth.authStateChanges();

  //login class
  Future<String?> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Login Successful';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //Sign up Auth Class
  Future<String?> signUp(
    String email,
    String password,
  ) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Signup Successful';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  //otp code:
  Future<String?> phoneAuth(String mobileNo) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: mobileNo,
        verificationCompleted: (credentials) {
          _auth.signInWithCredential(credentials);
        },
        verificationFailed: (e) {
          SnackBar(content: Text(e.toString()));
        },
        codeSent: ((verifiedId, forceResendingToken) {
          verificationId = verifiedId.toString();
        }),
        codeAutoRetrievalTimeout: (verificationId) {
          verificationId = verificationId.toString();
        });
  }

  //OTP Verification
  Future<bool> verifyOTP(String otp) async {
    var cred = await _auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otp));
    return cred.user != null ? true : false;
  }

  //Future<User?> createUser(UserModel user) async {}
}
