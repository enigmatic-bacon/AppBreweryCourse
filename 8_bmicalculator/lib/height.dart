import 'units.dart';

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
      double numerator = value - minMetricHeight;
      double denominator = maxMetricHeight - minMetricHeight;
      double percent = numerator / denominator;
      value = ((maxImperialHeight - minImperialHeight) * percent) +
          minImperialHeight;
    } else {
      double numerator = value - minImperialHeight;
      double denominator = maxImperialHeight - minImperialHeight;
      double percent = numerator / denominator;
      value = ((maxMetricHeight - minMetricHeight) * percent) + minMetricHeight;
    }
    heightUnits = newUnit;
  }
}
