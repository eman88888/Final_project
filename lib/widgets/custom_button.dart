import 'package:flutter/material.dart';
import 'package:flutter_navigation/color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.title, required this.onTap});
  String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
