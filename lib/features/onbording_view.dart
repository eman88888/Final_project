import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_navigation/reusable_widgets/buildimages.dart';
import 'package:flutter_navigation/utils/color_utils.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../views/Login.dart';

class onbordingview extends StatelessWidget {
  const onbordingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Affordable Eyeshadow Palettes',
            body:
                'just one click from getting all kinds of eyeshadow palettes from your favourite brands.',
            image: const BuildImages(image: 'assets/image 2.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Popular MakeUp products Brands',
            body: 'shop popular makeup products from beauty essentials.',
            image: const BuildImages(image: 'assets/image 3.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Original Designer MakeUp Products',
            body:
                'original makeup products will always make your work stand up!',
            image: const BuildImages(image: 'assets/image 4.png'),
            decoration: getPageDecoration(),
          ),
        ],
        globalBackgroundColor: Colors.black,
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.purple,
          //color: Color.fromARGB(255, 224, 157, 236),
        ),
        done: const Text('Done',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.purple
              //color: Color.fromARGB(255, 224, 157, 236),
              ),
        ),
        dotsDecorator: getDotDecoration(),
        nextFlex: 0,
        skipOrBackFlex: 0,
        animationDuration: 500,
        isProgressTap: true,
        isProgress: true,
        onChange: (index) => print(index),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      imagePadding: EdgeInsets.all(10),
      titlePadding: EdgeInsets.all(30),
      bodyPadding: EdgeInsets.all(20),
      pageColor: Color.fromARGB(255, 0, 0, 0),
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
        color: Colors.purple,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: Colors.purple,
        // Color.fromARGB(255, 224, 157, 236),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  }

  void goToHome(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
}
