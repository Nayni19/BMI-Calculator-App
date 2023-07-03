import 'package:flutter/material.dart';

const pinkColor = Color(0xFFe83d66);
const bottomContainerHeight = 80.0;

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.label});
  
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
            color: pinkColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(label, style: TextStyle(fontSize: 25.0)),
              ),
          )
          ;
  }
}