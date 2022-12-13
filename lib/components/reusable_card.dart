import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {super.key,
      required this.largeur,
      required this.couleur,
      required this.containerChild});
  final largeur;
  final couleur;
  Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.all(10.0),
          height: 200.0,
          width: largeur,
          decoration: BoxDecoration(
              color: couleur, borderRadius: BorderRadius.circular(10.0)),
          child: containerChild),
    );
  }
}
