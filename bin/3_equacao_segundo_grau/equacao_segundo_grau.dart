import 'dart:math';

void main() {
  //1, -1, -12
  //1, -5, 6
  //2, -8, 8
  final a = 2;
  final b = -8;
  final c = 8;

  final delta = (b * b) - (4 * a * c);

  final x1 = (-b + sqrt(delta)) / (2 * a);
  final x2 = (-b - sqrt(delta)) / (2 * a);

  print('x1 = $x1 e x2 = $x2');
}
