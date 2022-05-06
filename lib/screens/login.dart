import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_moving/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              height: 50,
            ),
            Image.asset(
              "assets/images/app_logo.png",
              height: 170,
            ),
            const Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    myBoldText("LOGIN", 20, blue),
                    SizedBox(
                      height: 5,
                    ),
                    myText("login with your phone number", 17, grey),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Phone number',
                hintStyle: TextStyle(color: grey, fontFamily: "myFont"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: blue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minWidth: 500,
              height: 60,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "SEND OTP",
                  style: TextStyle(color: white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const myText("By clicking you are agree to our", 12, grey),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const myText("Terms & Conditions", 13, blue),
                ),
                const SizedBox(
                  width: 5,
                ),
                const myText("and", 12, grey)
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const myText("Privacy Policy", 13, blue),
                ),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
