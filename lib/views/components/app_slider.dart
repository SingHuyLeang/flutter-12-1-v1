import 'package:flutter/material.dart';
import 'package:orif_coffee/views/components/custom_track_shape.dart';
import 'package:orif_coffee/views/components/styles.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key, required this.onChanged});

  final ValueChanged<double> onChanged;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbColor: AppColors.primary,
        thumbShape: const RoundSliderThumbShape(),
        activeTrackColor: AppColors.primary,
        inactiveTrackColor: Colors.grey[300],
        trackShape: CustomTrackShape(),
      ),
      child: Slider(
        min: 0,
        max: 100,
        value: sliderValue,
        onChanged: (value) {
          setState(() {
            sliderValue = value;
          });
          widget.onChanged(value);
        }, // call in this
      ),
    );
  }
}
