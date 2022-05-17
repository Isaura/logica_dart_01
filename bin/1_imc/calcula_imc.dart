void main() {
  final peso = 105;
  final altura = 1.80;

  final imc = peso / (altura * altura);
  print(imc.toStringAsFixed(2));
}
