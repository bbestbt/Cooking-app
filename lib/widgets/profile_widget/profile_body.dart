import 'package:cooking_app/widgets/home_widgets/recommend.dart';
import 'package:cooking_app/widgets/profile_widget/myRecipe_card.dart';
import 'package:cooking_app/widgets/profile_widget/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ProfileHeader(),
            Container(
              // color: Colors.pink,
              child: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My recipe",
                      style: TextStyle(
                        fontFamily: 'Century Gothic',
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff091D67),
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 45),
              child: MyRecipeCard(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: SizedBox(
                child: Container(
                  width: 135,
                  height: 135,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffFFA132))),
                      color: Colors.white,
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Icon(
                            Icons.add,
                            color: Color(0xffFFA132),
                            size: 50,
                          ),
                          Text(
                            "Add more recipe",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Century Gothic',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xffFFA132)),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}