import 'package:flutter/material.dart';
import 'package:flutter_navigation/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_navigation/widgets/custom_button.dart';
import 'package:flutter_navigation/widgets/custom_EmailTextfeild.dart';
import 'package:flutter_navigation/widgets/custom_PasswordTextfeild.dart';
import 'package:flutter_navigation/views/homepage.dart';

import 'Login.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);

  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
                height: 180,
                width: 180,
                child: Image.asset("assets/photo.png")),
            Text("CutiePie store",
                style: TextStyle(
                    fontSize: 38, color: Colors.white, fontFamily: 'Cookie')),
            Text("Sign Up",
                style: TextStyle(
                    fontSize: 28, color: Colors.white, fontFamily: 'Cookie')),
            Padding(
                padding: EdgeInsets.all(15),
                child: CustomTextFeild(
                  hintText: "Email",
                  onChanged: (data) {
                    email = data;
                  },
                )),
            Padding(
                padding: EdgeInsets.all(15),
                child: CustomPTextfeild(
                  hintText: "Password",
                  onChanged: (data) {
                    password = data;
                  },
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeMakeup()),
                );
              },
              child: CustomButton(
                title: "Sign Up",
                onTap: () async {
                  try {
                    UserCredential user = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: email!, password: password!);
                  } on FirebaseAuthException catch (ex) {
                    if (ex.code == "weak-password") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("weak password"),
                        ),
                      );
                    } else if (ex.code == "email-already-in-use") {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("email already exists"),
                        ),
                      );
                    }
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("success"),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "   Login?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
