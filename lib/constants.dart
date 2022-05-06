import 'package:flutter/material.dart';

const white = Color(0xffFFFFFF);
const black = Color(0xff000000);
const blue = Color(0xff2E3192);
const grey = Color(0xff949494);
const light = Color(0xffC8C5D6);

//All Normal Texts
class myText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  const myText(this.text, this.size, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size,
          fontWeight: FontWeight.w500,
          fontFamily: "myFont"
      ),
    );
  }
}

//All Bold Texts
class myBoldText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  const myBoldText(this.text, this.size, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: "myFont"
      ),
    );
  }
}
