class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String getBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You should excercise more!';
    } else if (_bmi > 18.5) {
      return 'Keep it up!';
    } else {
      return 'You should eat more!';
    }
  }
}
