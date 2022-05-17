import 'dart:io';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final velocidade = int.parse(inputs[0]);
  final aceleracao = int.parse(inputs[1]);

  final distancia = -(velocidade * velocidade) / (2 * aceleracao);

  print(distancia);
}
