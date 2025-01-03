import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';

class CustomTextformfield extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  const CustomTextformfield({super.key, required this.hintText, required this.keyboardType, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: Color(0xFFC9CECF),
        hintText: hintText,
        helperStyle: Textstyles.titleintextformfield1,
        filled: true,
        fillColor: Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
    ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Color(0xFFF9FAFA)),
        borderRadius: BorderRadius.circular(4),
      );
  }
}