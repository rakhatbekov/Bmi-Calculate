import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/texts/app_text.dart';
import 'package:bmi_calculator/controllers/bmi_page_controller.dart';
import 'package:bmi_calculator/data/repos/app_repo.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../data/enum/app_enum.dart';
import '../widgets/circle_button.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/custom_widget.dart';
import '../widgets/gender_widget.dart';

class BmiPage extends StatelessWidget {
  BmiPage({Key key}) : super(key: key);

  final BmiPageController _bmiPageController =
      Get.put<BmiPageController>(BmiPageController());

  Color _activeColor = AppColors.active;
  Color _inactiveColor = AppColors.inActive;

  // Gender _gender = Gender.None;
  // @override
  // void initState() {
  //   _bmiPageController.getHeight.value;
  //   _bmiPageController.setHeight = 160;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppText.bmiCaltulator),
          backgroundColor: AppColors.appBar,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => CustomWidget(
                          color: _bmiPageController.gender.value == Gender.Male
                              ? _activeColor
                              : _inactiveColor,
                          widget: GenderWidget(
                            icons: FontAwesomeIcons.mars,
                            text: AppText.male,
                            onTap: () =>
                                _bmiPageController.gender.value = Gender.Male,
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Obx(() => CustomWidget(
                          color:
                              _bmiPageController.gender.value == Gender.Female
                                  ? _activeColor
                                  : _inactiveColor,
                          widget: GenderWidget(
                            onTap: () =>
                                _bmiPageController.gender.value = Gender.Female,
                            icons: FontAwesomeIcons.venus,
                            text: AppText.female,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(() => CustomWidget(
                    color: AppColors.main,
                    widget: HeightWidget(
                      currentValue: _bmiPageController.getHeight.value.toInt(),
                      onChangedSlider: (double koldonuuchuOzgorttu) {
                        _bmiPageController.setHeight =
                            koldonuuchuOzgorttu.toInt();
                      },
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Obx(() => CustomWidget(
                          widget: CircleButton(
                            text: AppText.weight,
                            numberText: _bmiPageController.getWeight.value
                                .toInt()
                                .toString(),
                            remove: FontAwesomeIcons.minus,
                            add: FontAwesomeIcons.plus,
                            decrement: () =>
                                _bmiPageController.decrementWeight(),
                            // setState(() {
                            //   _weight--;
                            // });

                            increment: () =>
                                _bmiPageController.incrementWeight(),
                          ),
                          color: AppColors.main,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Obx(() => CustomWidget(
                          widget: CircleButton(
                            text: AppText.age,
                            numberText:
                                _bmiPageController.getAge.value.toString(),
                            remove: FontAwesomeIcons.minus,
                            add: FontAwesomeIcons.plus,
                            decrement: () => _bmiPageController.decrementAge(),
                            increment: () => _bmiPageController.incrementAge(),
                          ),
                          color: AppColors.main,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavgation(
          text: AppText.calculate,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: appRepo.calculateBmi(
                      _bmiPageController.getWeight.value,
                      _bmiPageController.getHeight.value,
                    ),
                  ),
                ));
          },
        ));
  }
}
