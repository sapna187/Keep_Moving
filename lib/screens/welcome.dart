import 'package:flutter/material.dart';
import 'package:keep_moving/constants.dart';
import 'package:keep_moving/screens/login_signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int indexValue = 0;

  List<String> images = [
    "assets/images/index 2.png",
    "assets/images/index 3.png",
    "assets/images/index 1.png",
  ];

  List<String> heading = [
    "Confirm your Driver",
    "Request Ride",
    "Track your ride",
  ];

  List<String> subText = [
    "Huge drivers network helps you find a",
    "Request a ride gets picked up by a nearby",
    "Know your driver in advance and be able to",
  ];

  List<String> subText2 = [
    "comfortable and cheap ride",
    "community driver",
    "view current location in real-time on the map",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                itemCount: 3,
                onPageChanged: (index){
                  setState((){
                    indexValue=index;
                  });
                },
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(images[index]),
                  ),
                ),
              ),
            ),
            const Spacer(),
            myBoldText(heading[indexValue], 20, blue),
            const SizedBox(height: 20),
            myText(subText[indexValue], 15, grey),
            const SizedBox(height: 5),
            myText(subText2[indexValue], 15, grey),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => indicator(index, context)),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              color: blue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minWidth: 500,
              height: 60,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSignup()));
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: myBoldText("GET STARTED", 16, white),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
  //Navigation indicators
  Widget indicator(int index, BuildContext context){
    return Container(height: 5, width: 15,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: indexValue == index ? blue : light
      ),
    );
  }
}
