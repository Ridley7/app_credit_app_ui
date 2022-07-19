import 'package:app_credit_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        scaffoldBackgroundColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}