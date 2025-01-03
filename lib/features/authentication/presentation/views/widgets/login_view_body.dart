import 'package:flutter/material.dart';
import 'package:fruitsapp/core/styles/textStyles.dart';
import 'package:fruitsapp/core/widgets/custom_button.dart';
import 'package:fruitsapp/core/widgets/custom_textformfield.dart';
import 'package:fruitsapp/core/widgets/custom_textrichwidget.dart';
import 'package:fruitsapp/core/widgets/or_divider_widget.dart';
import 'package:fruitsapp/features/authentication/presentation/views/widgets/social_icons_buttton.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: Textstyles.forgetpassword,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomButton(text: 'تسجيل الدخول'),
            SizedBox(height: 16),
            Textrichwidget(text1: 'لا تمتلك حساب؟', text2: 'قم بإنشاء حساب' ,onPressed: (){
              Navigator.pushNamed(context, '/register');
            },),
            SizedBox(height: 32),
            Ordivider(),
        SizedBox(height: 32),
        SocialIconsButtton(text: 'تسجيل بواسطة جوجل',icon: SvgPicture.asset('assets/images/googleicon.svg'),),
        SizedBox(height: 16),
        SocialIconsButtton(text: 'تسجيل بواسطة أبل',icon: SvgPicture.asset('assets/images/macicon.svg'),),
        SizedBox(height: 16),
        SocialIconsButtton(text: 'تسجيل بواسطة فيسبوك',icon: SvgPicture.asset('assets/images/facebookicon.svg'),),
          ],
      )
    ),
    );
  }
}