import 'package:flutter/material.dart';
import 'package:fruitsapp/core/widgets/custom_button.dart';
import 'package:fruitsapp/core/widgets/custom_textformfield.dart';
import 'package:fruitsapp/core/widgets/custom_textrichwidget.dart';
import 'package:fruitsapp/features/authentication/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomTextformfield(hintText: 'الإسم كامل', keyboardType: TextInputType.text),
            SizedBox(height: 16),
            CustomTextformfield(
              hintText: 'البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextformfield(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(height: 16),
            TermsAndConditions(),
            SizedBox(height: 32),
            CustomButton(text: 'إنشاء حساب جديد'),
            SizedBox(height: 16),
            Textrichwidget(text1: 'تمتلك حساب بالفعل؟ ', text2: 'تسجيل الدخول' ,onPressed: () {
              Navigator.pop(context);
            },),
          ],
      )
    ),
    );
  }
}