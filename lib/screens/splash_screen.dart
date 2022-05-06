import 'dart:async';

import 'package:flutter/material.dart';
import 'package:keep_moving/constants.dart';
import 'package:keep_moving/screens/welcome.dart';

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Welcome()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blue,
        body: Center(child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              "assets/images/app_logo.png",
              height: 160
            ),

            SizedBox(height: 170,),

            CircularProgressIndicator(
              valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 3,
            ),
          ],

        ),)
    );
  }
}