import 'package:flutter/material.dart';
import '../constants.dart';


class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton({super.key, required this.icon, required this.onPress, });
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: Color(0xFF5d5f6f),
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      child: Icon(icon, size: 30.0,),
    );
  }
}