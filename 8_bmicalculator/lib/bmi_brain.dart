import 'height.dart';
import 'weight.dart';
import 'units.dart';

class BMIBrain {
  BMIBrain({this.height, this.weight}) {
    height.changeHeightUnits(Units.metric);
    weight.changeWeightUnits(Units.metric);
    double heightInMeters = height.value / 100.0;
    _bmi = weight.value / (heightInMeters * heightInMeters);
  }
  final Height height;
  final Weight weight;
  double _bmi;

  double getBMI() => _bmi;

  String getResult() {
    if (_bmi > 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi > 25)
      return "You have a higher than normal body weight. That's okay!";
    else if (_bmi > 18.5)
      return "You have a normal body weight. That's okay!";
    else
      return "You have a lower than normal body weight. That's okay!";
  }
}
