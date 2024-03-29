import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/services/user_detail.dart';
import 'package:cooking_app/view_models/menu_provider.dart';
import 'package:cooking_app/widgets/profile_widget/profile_body.dart';

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
