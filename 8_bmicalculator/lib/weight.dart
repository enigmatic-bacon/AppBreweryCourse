import 'units.dart';

class Weight {
  double value;
  Units weightUnits;

  Weight({this.value, this.weightUnits});
  void changeWeightUnits(Units newUnit) {
    if (newUnit == weightUnits) return;

    if (newUnit == Units.imperial) {
      value = value * 2.205;
    } else {
      value = value / 2.205;
    }
    weightUnits = newUnit;
  }
}
