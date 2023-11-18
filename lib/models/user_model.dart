import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name = "test";
  DocumentReference<Map<String, dynamic>>? userReference;
  User(
      {String userName = "test",
      String? userID,
      DocumentReference<Map<String, dynamic>>? userRef}) {
    name = userName;
    userReference = userRef;
  }

  static Future<User> fromUserRef(
      DocumentReference<Map<String, dynamic>> userRef) async {
    DocumentSnapshot<Map<String, dynamic>> userData = await userRef.get();
    return User(
      userName: userData.get('name'),
      userID: userRef.id,
      userRef: userRef,
    );
  }
}
