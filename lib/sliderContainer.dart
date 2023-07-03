import 'package:flutter/material.dart';
import 'constants.dart';

  


class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int height = 180;
  double _currentSliderValue = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HEIGHT', style: labelStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(height.toString(), style: boldLabel),
                SizedBox(width: 10.0,),
                Text('CM', style: labelStyle,),
                
              ],
            ),
            Slider(
              value: _currentSliderValue,
              min: 120,
              max: 220,
              // divisions: 5,
              // label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  height = _currentSliderValue.toInt();
                });
              },
              activeColor: pinkColor,
              inactiveColor: Colors.grey,
            )
          ],
        ),
    );
  }
}