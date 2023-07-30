import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_navigation/views/sign_up.dart';
import 'package:flutter_navigation/views/welcoming.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_navigation/views/New_Home.dart';
import 'package:flutter_navigation/views/homepage.dart';
import 'package:flutter_navigation/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/makeup-brushes.jpg"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: AppColors.mColor1,
                      size: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey)),
                        validator: (value) {
                          if (value!.contains("@")) {
                            return null;
                          } else {
                            return "Invaild email";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey)),
                        validator: (value) {
                          if (value!.length < 8) {
                            return "password should contain 8 characters or more";
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30, // <-- SEE HERE
                    ),
                    InkWell(
                      onTap: () {},
                      child: FilledButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xffba88af)),
                            foregroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              bool loginresult = await signinUsingFirebase(
                                  emailController.text,
                                  passwordController.text);
                              if (loginresult == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondPage()),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Invalid Login')));
                              }
                            } else {
                              emailController.clear();
                            }
                          },
                          child: const Text('Log In',
                              style: TextStyle(fontSize: 20))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            "   Sign Up?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  saveEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
  }

  savePassword(String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("password", password);
  }

  Future<bool> signinUsingFirebase(String email, String password) async {
    bool result = false;
    try {
      UserCredential Credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = Credential.user;
      if (user != null) {
        print(user?.uid);
        saveEmail(user!.email!);
        result = true;
      }
      return result;
    } catch (e) {
      return result;
    }
  }
}
