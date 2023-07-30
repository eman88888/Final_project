import 'package:flutter/material.dart';
import 'package:flutter_navigation/features/onbording_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // AnimationController? animationController;
  // Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    // animationController =
    //  AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    //fadingAnimation =
    // Tween<double>(begin: .2, end: 1).animate(animationController!);

    // animationController?.repeat(reverse: true);

    goToNextView();
  }

  //@override
  //void dispose() {
  //  animationController?.dispose();
  // super.dispose();
  //}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),

          //Text(
          // 'Makeup store',
          // style: TextStyle(
          //fontSize: 51,
          //fontWeight: FontWeight.bold,
          //color: Color.fromARGB(255, 255, 255, 255),
          // ),
          // ),

          Image.asset('assets/image 1.png'),

          // Adobe XD layer: 'mix_fruit_png_11' (shape)
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => onbordingview(), transition: Transition.fade);
    });
  }
}
