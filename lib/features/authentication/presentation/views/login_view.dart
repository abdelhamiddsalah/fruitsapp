import 'package:flutter/material.dart';
import 'package:fruitsapp/core/widgets/custom_appbar.dart';
import 'package:fruitsapp/features/authentication/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'تسجيل الدخول', context: context, icon: Icon(Icons.arrow_back_ios)),
      body: SafeArea(child: LoginViewBody()));
  }

  
}