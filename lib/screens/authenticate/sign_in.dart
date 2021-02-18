import 'package:cooking_app/screens/authenticate/sign_up.dart';
import 'package:cooking_app/view_models/cooking_user_view_model.dart';
import 'package:cooking_app/widgets/authentication_widgets/signup_widgets/sign_form.dart';
import 'package:cooking_app/widgets/authentication_widgets/social.dart';
import 'package:cooking_app/widgets/shared/roundedbutton.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static String routeName="/sign_in";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var vmCooking = CookingUserViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF012060),
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Sign in username and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SignForm(),
                RoundedButton(
                  text: "Login",
                  press: () async {
                    vmCooking.signInAnon();
                    print(vmCooking.uid);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Social(
                      icon: "assets/icons/google.svg",
                      press: () {}, // TODO implement auth service
                    ),
                    Social(
                      icon: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    Social(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, SignUpScreen.routeName),
                        child: Text("Sign up ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFA925),
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
