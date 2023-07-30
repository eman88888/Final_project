import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/custom_card.dart';
import 'package:flutter_navigation/models/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff030303),
        title: Text(
          'Categories',
          style: TextStyle(
              fontFamily: "Cookie",
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 10, right: 10),
        child: GridView.builder(
            itemCount: images.length,
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 100,
            ),
            itemBuilder: (context, index) {
              return CustomCard(
                  image: images[index].imagepath, type: images[index].category);
            }),
      ),
    );
  }
}
