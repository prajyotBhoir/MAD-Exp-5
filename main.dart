import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'faqs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const MainScreen(),
        '/about':(context) => const AboutPage(),
        '/faqs':(context) => const FaqsPage(),
      },
    );
  }
}







