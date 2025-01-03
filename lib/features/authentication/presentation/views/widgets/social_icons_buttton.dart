// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fruitsapp/core/styles/textStyles.dart';

class SocialIconsButtton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? icon;
  final String text;
  const SocialIconsButtton({
    super.key,
    this.onPressed,
    this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
                side:  BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
         visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),

          leading: icon,
          title: Text(
            text,
            textAlign: TextAlign.center,
            style: Textstyles.googletext,
          ),
        ),
      ),
    );
  }
}
