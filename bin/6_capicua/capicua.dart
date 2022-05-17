void main() {
  int num = 10201;
  final digito1 = num ~/ 10000;
  num %= 10000;

  final digito2 = num ~/ 1000;
  num %= 1000;

  final digito3 = num ~/ 100;
  num %= 100;

  final digito4 = num ~/ 10;
  final digito5 = num % 10;

  print('$digito1$digito2$digito3$digito4$digito5');

  final primeiraParte = digito1 == digito5;
  final segundaParte = digito2 == digito4;
  final capicua = primeiraParte && segundaParte;
  print(capicua ? 'capicua' : 'Não é capicua');

  if (!primeiraParte) {
    print('O primeiro dígito deve ser igual ao último dígito');
  }

  if (!segundaParte) {
    print('O segundo dígito deve ser igual ao quarto dígito');
  }
}
