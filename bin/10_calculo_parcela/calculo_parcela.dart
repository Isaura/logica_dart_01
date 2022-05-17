import 'dart:io';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final valorEmprestimo = double.parse(inputs[0]);
  final serasaScore = int.parse(inputs[1]);
  final meses = int.parse(inputs[2]);

  double juros;
  if (serasaScore < 300) {
    juros = 3 / 100;
  } else if (serasaScore < 700) {
    juros = 9 / 100;
  } else {
    juros = 15 / 100;
  }

  final parcela = (valorEmprestimo + (valorEmprestimo * juros)) / meses;
  print('$parcela');
}
