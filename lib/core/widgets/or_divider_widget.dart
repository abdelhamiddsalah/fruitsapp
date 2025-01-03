import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';

class Ordivider extends StatelessWidget {
  const Ordivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xFFC9CECF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'او',
            style: Textstyles.or,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xFFC9CECF),
          ),
        ),
              ],
            );
  }
}