import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/authentication/response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final crudRepo = Provider((ref) => FirebaseCrud);
final FirebaseFirestore _db = FirebaseFirestore.instance;
final CollectionReference _collect = _db.collection('Uzar');

class FirebaseCrud {
  //CRUD functionality code starts here
  static Future<Response> addUzar(
      {required String fullName,
      required String mobileNo,
      required String email,
      required String password}) async {
    Response response = Response();
    DocumentReference documentReferencer = _collect.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "Fullname": fullName,
      "Phone": mobileNo,
      "Email": email,
      "Password": password
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
  //user creation ends here

  static Stream<QuerySnapshot> readUser() {
    CollectionReference notesItemCollection = _collect;

    return notesItemCollection.snapshots();
  }
  //user reading ends here

  static Future<Response> updateUser(
      {required String fullName,
      required String mobileNo,
      required String email,
      required String password,
      required String id}) async {
    Response response = Response();
    DocumentReference documentReferencer = _collect.doc(id);

    Map<String, dynamic> data = <String, dynamic>{
      "Fullname": fullName,
      "Phone": mobileNo,
      "Email": email,
      "Password": password
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated User";
      //SnackBar(content: Text(response.toString()));
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
  //updating user ends here

  static Future<Response> deleteUser({
    required String id,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _collect.doc(id);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully Deleted Employee";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
}
