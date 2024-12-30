// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruitsapp/constants/app_images.dart';
import 'package:fruitsapp/core/routing/routes.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeAfterBuild();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.imagesLogo),
        ],
      ),
      SvgPicture.asset(Assets.imagesPhoto),
      SvgPicture.asset(Assets.imagesLogoo, fit: BoxFit.fill,),
    ],
    );
  }

void executeAfterBuild() {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushNamed(context, Routes.onBoarding);
  });
}
}