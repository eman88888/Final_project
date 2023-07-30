import 'package:flutter_navigation/views/homepage.dart';
import 'package:flutter_navigation/views/Main_Category.dart';
import 'package:flutter_navigation/views/profile.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int sellectedIndex = 0;
  List<Widget> page = [
    HomeMakeup(),
    ProfilePage(
      email: ("nada2002@gmail.com"),
      password: ("20021027"),
    ),
    HomePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: page[sellectedIndex],
      //Column(children: [
      //TextField(
      //decoration: InputDecoration(
      //border: OutlineInputBorder(),
      //hintText:widget.email ,
      //),
      //),

      //]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
        ],
        onTap: (value) {
          sellectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
