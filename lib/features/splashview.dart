import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_navigation/reusable_widgets/splashview_body.dart';

class splashview extends StatefulWidget {
  const splashview({super.key});

  @override
  State<splashview> createState() => _splashviewState();
}

class _splashviewState extends State<splashview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SplashViewBody(),
    );
  }
}
