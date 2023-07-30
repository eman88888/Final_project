import 'package:flutter/material.dart';
import 'package:flutter_navigation/color.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({required this.onChanged, required this.hintText});
  Function(String?) onChanged;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
          filled: true, //<-- SEE HERE
          fillColor: AppColors.mColor1,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xfff8e4e4))),
    );
  }
}
