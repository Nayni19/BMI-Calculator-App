import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.iconType, required this.name});

  final IconData iconType;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconType,
            color: Colors.white,
            size: 80.0,
          ),
          SizedBox(height: 10.0,),
          Text(name, style: labelStyle,)
        ],
      ),
    );
  }
}
