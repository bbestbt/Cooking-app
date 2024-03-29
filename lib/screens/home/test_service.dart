import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/services/auth.dart';
import 'package:cooking_app/services/bookmark_service.dart';
import 'package:cooking_app/services/dataTransfer.dart';
import 'package:cooking_app/services/menu_detail_service.dart';
import 'package:cooking_app/services/menu_service.dart';
import 'package:cooking_app/services/post_services/bookmark_post_service.dart';
import 'package:cooking_app/services/post_services/menu_post.dart';
import 'package:cooking_app/services/post_services/user_detail_post.dart';
import 'package:cooking_app/services/user_detail.dart';
import 'package:flutter/material.dart';

class TestServiceScreen extends StatefulWidget {
  static String routeName = "/test_service";

  @override
  _TestServiceScreenState createState() => _TestServiceScreenState();
}

class _TestServiceScreenState extends State<TestServiceScreen> {
  DataTransfer d = DataTransfer();
  MenuDetailService m = MenuDetailService('Red soda');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Center(child: Text('Service Test')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await m.fetchIngredient();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Future<void> testFn() async {
  CollectionReference _menuReference =
      FirebaseFirestore.instance.collection('test2');

  QuerySnapshot querySnapshot = await _menuReference
      .where('name', isEqualTo: 'Spaghetti Pasta Carbonara')
      .get();

  var img = querySnapshot.docs[0].data()['image'];
  print(img);

  //var menuId = querySnapshot.docs[0].id;
}
