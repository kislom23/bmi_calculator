import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
/*enum enumgender{
  homme,
  femme
}*/
class MyIconWidget extends StatelessWidget {
  MyIconWidget({required this.icon, required this.gender});
  final icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 70.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 30.0),
        ),
      ],
    );
  }
}