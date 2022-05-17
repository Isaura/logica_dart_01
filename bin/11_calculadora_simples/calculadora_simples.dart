import 'dart:io';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  double number1 = double.parse(inputs[0]);
  String operator = inputs[1];
  double number2 = double.parse(inputs[2]);
  double result;

  switch (operator) {
    case '-':
      result = number1 - number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      result = number1 / number2;
      break;
    default:
      result = number1 + number2;
      break;
  }

  final resultAprox = result.toStringAsFixed(5);
  final resultInteiro = result ~/ 1;
  final resultResto = result % 1;

  if (resultResto > 0) {
    print(double.parse(resultAprox));
  } else {
    print(resultInteiro);
  }
}
