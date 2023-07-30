import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/views/DetailsScreen.dart';
import 'package:flutter_navigation/views/about.dart';
import 'package:flutter_navigation/views/about_team.dart';

class HomeMakeup extends StatefulWidget {
  const HomeMakeup({Key? key}) : super(key: key);

  @override
  State<HomeMakeup> createState() => _HomeMakeupState();
}

class _HomeMakeupState extends State<HomeMakeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff030303),
        title: Text(
          'Home',
          style: TextStyle(
              fontFamily: "Cookie",
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TeamPage()),
                  );
                  // do something
                },
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: Icon(
                  Icons.question_mark,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                  // do something
                },
              ),
            ],
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 22),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(product: items[i])));
              },
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                        top: -3,
                        bottom: -9,
                        right: 1,
                        left: 1,
                        child:
                            ClipRRect(child: Image.asset(items[i].imagepath)))
                  ],
                ),
                footer: GridTileBar(
                  backgroundColor: Color(0x42ffffff),
                  trailing: IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart)),
                  leading: Text(items[i].price,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  title: Text("          "),
                ),
              ));
        },
      ),
    );
  }
}
