import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_moving/constants.dart';
import 'package:keep_moving/screens/login.dart';
import 'package:keep_moving/screens/signup.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  var size1, height, width;

  @override
  Widget build(BuildContext context) {
    size1 = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/app_logo.png",
              height: 170,
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                myBoldText("Welcome", 27, blue),
                SizedBox(
                  height: 10,
                ),
                myText(
                    "Already have an account click login, otherwise", 15, grey),
                SizedBox(
                  height: 5,
                ),
                myText("click signup", 15, grey),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            const Spacer(),
            MaterialButton(
              color: white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: blue)),
              minWidth: MediaQuery.of(context).size.width,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: myBoldText("LOGIN", 16, blue)),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: blue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: myBoldText("SIGN UP", 16, white)),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
