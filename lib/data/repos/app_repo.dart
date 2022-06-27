
import 'package:bmi_calculator/data/services/app_service.dart';

class AppRepo {
  double calculateBmi(int _weight, int _height){
    return appService.calculateBmi(_weight, _height);

  }

  String getResult(double _bmi){
    return appService.getResult(_bmi);
  }

  String getInterpretation(double _bmi){
    return appService.getInterpretation(_bmi);
  }
}

final AppRepo appRepo = AppRepo();