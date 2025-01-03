import 'package:flutter/material.dart';
import 'package:fruitsapp/core/widgets/custom_appbar.dart';
import 'package:fruitsapp/features/authentication/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'حساب جديد', context: context, icon: Icon(Icons.arrow_back_ios)),
      body: SafeArea(child: SignupViewBody()));
  }
}