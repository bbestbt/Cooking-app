import 'package:cloud_firestore/cloud_firestore.dart';

const userCollection = 'users';

class UserDetailPost {
  CollectionReference _userReference =
  FirebaseFirestore.instance.collection(userCollection);

  String _uid;

  UserDetailPost(String uid) {
    this._uid = uid;
  }

  Future<void> updateUserImage(String imagePath) {
    return _userReference.doc(_uid).update(
      {'urlToImg': imagePath}
    ).then((value) => print("Update image done."));
  }

  Future<void> updateUserBio(String text) {
    return _userReference.doc(_uid).update(
        {'bio': text}
    ).then((value) => print("Update bio done."));
  }

  Future<void> updateUsername(String newName) {
    return _userReference.doc(_uid).update(
        {'username': newName}
    ).then((value) => print("Update username done."));
  }
}