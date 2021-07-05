import "dart:math";

class CalculationBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculationBrain({required this.height, required this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getBMIText() {
    if (_bmi > 25) {
      return "obese";
    } else if (_bmi > 18.5) {
      return "overweight";
    } else if (_bmi > 12.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return "You are at health risk. You need to start loosing weight ASAP!";
    } else if (_bmi > 18.5) {
      return "You are at borderline health risk. You need to Move more";
    } else if (_bmi > 12.5) {
      return "You are at good health. Keep moving!";
    } else {
      return "you are underweight, Do some weight training";
    }
  }
}
