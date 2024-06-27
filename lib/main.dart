import 'package:authapp/pages/calculator.dart';
import 'package:authapp/pages/login_page.dart';
import 'package:authapp/pages/signup_Page.dart';
import 'package:flutter/material.dart';
import 'package:authapp/pages/welcome_page.dart';
import 'package:authapp/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/welcome': (context) => WelcomePage(),
         '/calculator': (context) => CalculatorPage(),
      },
    );
  }
}

