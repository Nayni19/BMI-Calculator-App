import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color, required this.childWidget, required this.onpress});

  final Color color;
  final Widget childWidget;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: 
        Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color:  color,
              borderRadius: BorderRadius.circular(10)
          ),
          child: childWidget,
        ),
    );
  }
}