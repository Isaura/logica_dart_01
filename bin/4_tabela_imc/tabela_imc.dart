void main() {
  final peso = 75.7;
  final altura = 1.74;

  final imc = peso / (altura * altura);

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc < 25) {
    print('Peso normal ou saudável');
  } else if (imc < 30) {
    print('Acima do peso');
  } else {
    print('Obesidade');
  }
}
