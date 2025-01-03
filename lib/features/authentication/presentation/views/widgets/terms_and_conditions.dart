import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';
import 'package:fruitsapp/features/authentication/presentation/views/widgets/custom_checkbox.dart';

class TermsAndConditions extends StatelessWidget {
  TermsAndConditions({super.key});

  final ValueNotifier<bool> isTermsAndConditionsChecked = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: isTermsAndConditionsChecked,
          builder: (context, value, _) {
            return CustomCheckbox(
              onChange: (newValue) {
                isTermsAndConditionsChecked.value = newValue;
              },
              isChecked: value,
            );
          },
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'من خلال إنشاء حساب ، فإنك توافق على ',
              style: Textstyles.donothaveaccount,
              children: [
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: Textstyles.createaccount,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
