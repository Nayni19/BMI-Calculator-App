import 'package:flutter/material.dart';
import '../constants.dart';
import 'customButton.dart';

class IndicatorContainer extends StatefulWidget {
  const IndicatorContainer({super.key, required this.name, required this.indicatorVal, required this.incrementHandler, required this.decrementHandler});
  @override

  final String name;
  final String indicatorVal;
  final VoidCallback incrementHandler;
  final VoidCallback decrementHandler;

  State<IndicatorContainer> createState() => _IndicatorContainerState();
}

class _IndicatorContainerState extends State<IndicatorContainer> {
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.name, style: labelStyle),
        Text(widget.indicatorVal, style: boldLabel),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundButton(icon: Icons.remove, onPress: widget.decrementHandler),
            SizedBox(width: 15.0),
            CustomRoundButton(icon: Icons.add, onPress: widget.incrementHandler,),
            
          ],
        )
      ],
    );
  }
}

