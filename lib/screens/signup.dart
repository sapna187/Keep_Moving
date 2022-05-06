import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_moving/constants.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var size1, heigth, width;
  List<String> values = ['Personal', 'Business', 'House Shifting']; // Option 2
  String? selectedValue; // Option 2

  @override
  Widget build(BuildContext context) {
    size1 = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: .5,
          backgroundColor: white,
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: blue,
          ),
          title: const myBoldText("Sign Up", 22, blue)),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter email address',
                  hintStyle: TextStyle(color: grey, fontFamily: "myFont"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name',
                  hintStyle: TextStyle(color: grey, fontFamily: "myFont"),
                ),
              ),
              const SizedBox(
                height: 30,
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
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                hint: myText("Personal", 17, black),
                isExpanded: true,
                borderRadius: BorderRadius.circular(5),
                value: selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue as String;
                  });
                },
                items: values.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location, style: TextStyle(fontFamily: "myFont"),),
                    value: location,
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Gst (Optional)',
                  hintStyle: TextStyle(color: grey, fontFamily: "myFont"),
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
              const SizedBox(
                height: 130,
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
                    "Sign Up",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
