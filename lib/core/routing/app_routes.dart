import 'package:flutter/material.dart';
import 'package:fruitsapp/core/routing/routes.dart';
import 'package:fruitsapp/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruitsapp/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
   Route? generateRoute(RouteSettings settings) {
      switch (settings.name) {
         case Routes.splash:
            return MaterialPageRoute(builder: (context) => const SplashView());
         case Routes.onBoarding:
            return MaterialPageRoute(builder: (context) => const OnBoardingView());
         default:
            return null;
      }
   }
}