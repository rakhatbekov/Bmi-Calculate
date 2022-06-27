import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/textStyles/app_text_style.dart';
import 'package:bmi_calculator/constants/texts/app_text.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  HeightWidget({this.currentValue, this.onChangedSlider});
  final int currentValue;
  final Function(double value) onChangedSlider;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.height.toUpperCase(),
          style: AppTextStyle.heightText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              currentValue.toString() ,
              style: AppTextStyle.currentvalueText,
            ),
            Text(
              AppText.sm,
              style: AppTextStyle.smText,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.red,
            inactiveTrackColor: AppColors.white,
            thumbColor: AppColors.redAccent,
            overlayColor: AppColors.yellow,
           
            overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
          ),
          child: Slider(
            value: currentValue.toDouble(),
            min: 0,
            max: 230,
           
            onChanged: onChangedSlider,
          ),
        ),
      ],
    );
  }
}
