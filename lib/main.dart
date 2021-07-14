import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:uber_app/src/pages/home/home_page.dart';
import 'package:uber_app/src/pages/login/login_page.dart';
import 'package:uber_app/src/pages/register/register_page.dart';
import 'package:uber_app/src/utils/colors.dart' as utils;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'NimbusSans',
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        primaryColor: utils.Colors.uberCloneColor,
      ),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}
