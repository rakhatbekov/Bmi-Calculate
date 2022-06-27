import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/textStyles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomBottomNavgation extends StatelessWidget {
  const CustomBottomNavgation({this.onTap, this.text});
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: AppColors.red,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: AppTextStyle.bottomNagigation,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
