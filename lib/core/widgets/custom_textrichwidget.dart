import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';

class Textrichwidget extends StatelessWidget {
  final String text1;
  final String text2;
  final Function()? onPressed;
  const Textrichwidget({
    super.key, required this.text1, required this.text2, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: Textstyles.donothaveaccount,
        children: [
          TextSpan(
            text: text2,
            style: Textstyles.createaccount,
             recognizer: TapGestureRecognizer()
              ..onTap = onPressed,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
