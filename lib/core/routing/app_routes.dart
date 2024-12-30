import 'package:flutter/material.dart';
import 'package:fruitsapp/core/routing/routes.dart';
import 'package:fruitsapp/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
   Route? generateRoute(RouteSettings settings) {
      switch (settings.name) {
         case Routes.splash:
            return MaterialPageRoute(builder: (context) => const SplashView());
         default:
            return null;
      }
   }
}