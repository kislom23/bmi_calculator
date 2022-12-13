import 'package:flutter/material.dart';
import 'package:bmi_calculator_ipnet/screens/input_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black12,
          scaffoldBackgroundColor: const Color(0xFF0A0E21)),
      home: const InputPage(),
    );
  }
}