import 'package:flutter/material.dart';

class DeveloperData extends StatefulWidget {
  String? name;
  String? info;
  DeveloperData({super.key, required this.name, required this.info});

  @override
  State<DeveloperData> createState() => _DeveloperDataState();
}

class _DeveloperDataState extends State<DeveloperData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, right: 10),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xFFF6E9F6),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/woman.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              /* VerticalDivider(
                color: Colors.black,
                thickness: 4,
              ),*/
              IntrinsicWidth(
                child: Column(
                  children: [
                    Text(
                      widget.name!,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      'Mobile app Developer',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 8,
                          fontFamily: 'Pacifico'),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Text(
                      widget.info!,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 8,
                          fontFamily: 'Pacifico'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
