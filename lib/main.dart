import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruitsapp/core/routing/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruitsapp/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );

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
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white
      ),
  locale: Locale('ar', 'EG'), // تعيين اللغة إلى العربية (مصر)
  supportedLocales: [
    Locale('en', 'US'), // اللغة الإنجليزية
    Locale('ar', 'EG'), // اللغة العربية
  ],
  localizationsDelegates: [
    // ... app-specific localization delegate[s] here
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      onGenerateRoute: appRoutes.generateRoute,
    );
  }
}