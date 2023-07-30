import 'package:flutter_navigation/widgets/dev_data.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/showy.jpg'),
                        fit: BoxFit.cover),
                    //color: Color(0xFFCDA6CB),
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70, bottom: 10),
                        child: Text(
                          'CutiePie store',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 30),
                        child: Text(
                          'Your Ultimate Makeup Haven - Shop, Discover, and Enhance Your Beauty!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Pacifico',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Meet our Team",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Pacifico',
                          fontSize: 20),
                    ),
                  )),
                  Row(
                    children: [
                      Column(
                        children: [
                          DeveloperData(
                              name: 'Nada Elabbasy',
                              info:
                                  'student at KafrElsheihk University\n year 4, bioinformatics department. \n Trainee at ITI institute'),
                          DeveloperData(
                              name: 'Rehab Megahed',
                              info:
                                  'student at KafrElsheihk University\n year 4, bioinformatics department. \n Trainee at ITI institute'),
                          DeveloperData(
                              name: 'Eman Gabr',
                              info:
                                  'student at KafrElsheihk University\n year 4, bioinformatics department. \n Trainee at ITI institute'),
                          DeveloperData(
                              name: 'Ola Elashry',
                              info:
                                  'student at KafrElsheihk University\n year 4, IT department. \n Trainee at ITI institute'),
                          DeveloperData(
                              name: 'Youmna Essam',
                              info:
                                  'student at KafrElsheihk University\n year 4, bioinformatics department. \n Trainee at ITI institute'),
                        ],
                      ), //first column
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
