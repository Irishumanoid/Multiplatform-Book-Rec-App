import 'package:flutter/material.dart';

class TypeSlider extends StatefulWidget {
  final String leftLabel;
  final String rightLabel;
  final ValueChanged<double> onChanged; // Add callback

  const TypeSlider({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.onChanged,
  });

  @override
  State<TypeSlider> createState() => _TypeSliderState();
}

class _TypeSliderState extends State<TypeSlider> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: sliderValue,
          onChanged: (newValue) {
            setState(() {
              sliderValue = newValue;
            });
            widget.onChanged(newValue);
          },
          divisions: 10,
          max: 10,
          label: "${sliderValue.floor()}",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.leftLabel),
              Text(widget.rightLabel),
            ],
          ),
        ),
      ],
    );
  }
}
