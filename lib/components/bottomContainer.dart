import 'package:flutter/material.dart';
import '../constants.dart';


class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key, required this.label, required this.onPressHandler});
  
  final String label;
  final VoidCallback onPressHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressHandler,
      child: Container(
              color: pinkColor,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(label, style: bottomContainerText),
                ),
            ),
    )
          ;
  }
}