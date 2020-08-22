import 'units.dart';
import 'utils.dart';

const double minImperialHeight = 47.24;
const double minMetricHeight = 120;
const double maxImperialHeight = 86.61;
const double maxMetricHeight = 220;

class Height {
  double value;
  Units heightUnits;

  Height({this.value, this.heightUnits});
  void changeHeightUnits(Units newUnit) {
    if (newUnit == heightUnits) return;

    if (newUnit == Units.imperial) {
      value = middleOfThree(value / 2.54, minImperialHeight, maxImperialHeight);
    } else {
      value = middleOfThree(value * 2.54, minMetricHeight, maxMetricHeight);
    }
    heightUnits = newUnit;
  }
}
