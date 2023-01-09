import 'package:finall/home_page.dart';
import 'package:finall/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yasam Uygulaması',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.black),
        home: const LoginPage());
  }
}
