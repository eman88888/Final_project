import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/Items.dart';
import 'package:flutter_navigation/color.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Details extends StatefulWidget {
  Categories product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  //const Details({Key? key}) : super(key: key);
  bool showMore = true;
  CollectionReference itemDocs =
      FirebaseFirestore.instance.collection('itemDetails');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff030303),
          title: Text(
            'Details',
            style: TextStyle(
                fontFamily: "Cookie",
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.product.imagepath),
              SizedBox(height: 11),
              Text(
                "\$  ${widget.product.price}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text("New", style: TextStyle(fontSize: 15)),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: AppColors.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: AppColors.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: AppColors.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: AppColors.yellowColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: AppColors.yellowColor,
                    ),
                    SizedBox(width: 40),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_location,
                          size: 26,
                          color: AppColors.mColor1,
                        ),
                        SizedBox(width: 3),
                        Text(
                          "CutiePie store",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 16),
              SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Details:",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  )),
              SizedBox(height: 16),
              FutureBuilder<QuerySnapshot<Object?>>(
                future: itemDocs.get(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }

                  if (snapshot.hasData == false && snapshot.data == null) {
                    return Text("");
                  }
                  print(snapshot.connectionState.toString());
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (widget.product.price[index] == index) {
                          return Text(
                            "Task Status: ${snapshot.data!.docs[index]['details']} ",
                            style: TextStyle(fontSize: 18),
                            maxLines: showMore ? 4 : null,
                            overflow: TextOverflow.clip,
                          );
                        }
                        ;
                      },
                    );
                  }
                  return Text("Loading");
                },
              ),
              Text(
                widget.product.details,
                style: TextStyle(fontSize: 18),
                maxLines: showMore ? 4 : null,
                overflow: TextOverflow.clip,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      showMore = !showMore;
                    });
                  },
                  child: Text(
                    showMore ? "show more" : "show less",
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          ),
        ));
  }
}
