import 'package:flutter/material.dart';
import 'package:fruitsapp/core/routing/app_routes.dart';

void main() {
  runApp(FruitsHub());
}

class FruitsHub extends StatelessWidget {
   final String initialRoute = '/';
  final AppRoutes appRoutes = AppRoutes();
   FruitsHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      onGenerateRoute: appRoutes.generateRoute,
    );
  }
}