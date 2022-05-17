import 'dart:io';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);

  if (num1 == num2 || num1 == num3 || num2 == num3) {
    print('Informe numeros diferentes');
  } else {
    int posicao1;
    int posicao2;
    int posicao3;

    if (num1 > num2) {
      if (num1 > num3) {
        posicao1 = num1;
        if (num3 > num2) {
          posicao2 = num3;
          posicao3 = num2;
        } else {
          posicao2 = num2;
          posicao3 = num3;
        }
      } else {
        posicao1 = num3;
        posicao2 = num1;
        posicao3 = num2;
      }
    } else {
      if (num2 > num3) {
        posicao1 = num2;
        if (num3 > num1) {
          posicao2 = num3;
          posicao3 = num1;
        } else {
          posicao2 = num1;
          posicao3 = num3;
        }
      } else {
        posicao1 = num3;
        posicao2 = num2;
        posicao3 = num1;
      }
    }
    print('$posicao1 $posicao2 $posicao3');
  }
}
