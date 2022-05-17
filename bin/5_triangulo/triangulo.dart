void main() {
  final a = 5;
  final b = 12;
  final c = 13;

  //verifica se é um triangulo
  //cada lado deve ser menor do que a soma dos outros 2 lados
  if ((a < b + c) && (b < a + c) && (c < a + b)) {
    print('É um triângulo');

    if (a == b && b == c) {
      print('Equilátero');
    } else if ((a == b) || (b == c) || (c == a)) {
      print('Isósceles');
    } else if ((a != b) && (b != c) && (c != a)) {
      print('Escaleno');
    }

    if ((a * a) + (b * b) == c * c) {
      print('É um triângulo retângulo');
    }
  } else {
    print('Não é possível formar um triângulo');
  }
}
