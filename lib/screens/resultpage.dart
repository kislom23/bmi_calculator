import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String mon_bmi;
  final String mon_resultat;
  final String interpretation;

  const ResultPage({super.key, required this.mon_bmi, required this.mon_resultat, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                mon_bmi,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),

            ),

          ),
          Expanded(
            child: Container(
              child: Text(
                mon_resultat,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),

            ),

          ),
          Expanded(
            child: Container(
              child: Text(
                interpretation,
                style: const TextStyle(
                  fontSize: 20.0,
                  color : Colors.green,
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}