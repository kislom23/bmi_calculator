import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
const   RoundedButton({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}
