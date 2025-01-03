import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';

AppBar buildCustomAppBar({
  required String title,
  required BuildContext context,
  required Widget icon,
}) {
  return AppBar(
    title: Text(
      title,
      style: Textstyles.title,
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: icon,
    ),
  );
}
