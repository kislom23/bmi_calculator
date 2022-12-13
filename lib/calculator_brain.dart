import 'dart:math';

class CalculatorBrain {

  final int taille;
  final int poids;

  CalculatorBrain({required this.taille, required this.poids});

  double _bmi=0;

  String calculateBMI() {
    _bmi = poids / pow(taille / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Surpoids';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Insuffisance pondérale';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Vous êtes en sûrpoids. Faites du sport.';
    } else if (_bmi >= 18.5) {
      return 'Vous avez un corps normal. Félicitations !';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}