import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckbox extends StatelessWidget {
  final bool? isChecked;
  final ValueChanged<bool>? onChange;

  const CustomCheckbox({super.key, this.isChecked, this.onChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChange!(!isChecked!);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked! ? const Color(0xFF1B5E37) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: isChecked! ? const Color(0xFF1B5E37) : const Color(0xFFC9CECF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked!
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  'assets/images/checkicon.svg',
                  fit: BoxFit.fill,
                ),
              )
            : null,
      ),
    );
  }
}
