import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  int cedulasCem = 0;
  int cedulasCinquenta = 0;
  int cedulasVinte = 0;
  int cedulasDez = 0;
  int cedulasCinco = 0;
  int cedulasDois = 0;
  String msg = '';
  String separador = '';

  if (value % 5 == 1 || value % 5 == 3) {
    value -= 5;
    cedulasCinco++;
  }

  if (value >= 100) {
    cedulasCem = value ~/ 100;
    value %= 100;
    msg += '$cedulasCem de 100';
  }

  if (value >= 50) {
    cedulasCinquenta = value ~/ 50;
    value %= 50;
    separador = msg.isEmpty ? '' : ', ';
    msg += '$separador$cedulasCinquenta de 50';
  }

  if (value >= 20) {
    cedulasVinte = value ~/ 20;
    value %= 20;
    separador = msg.isEmpty ? '' : ', ';
    msg += '$separador$cedulasVinte de 20';
  }

  if (value >= 10) {
    cedulasDez = value ~/ 10;
    value %= 10;
    separador = msg.isEmpty ? '' : ', ';
    msg += '$separador$cedulasDez de 10';
  }

  final cincoTemp = value ~/ 5;
  if (cincoTemp > 0) {
    cedulasCinco += cincoTemp;
    value %= 5;
  }

  if (value % 2 != 0) {
    cedulasCinco--;
    value += 5;
  }

  if (cedulasCinco > 0) {
    separador = msg.isEmpty ? '' : ', ';
    msg += '$separador$cedulasCinco de 5';
  }

  if (value >= 2) {
    cedulasDois = value ~/ 2;
    value %= 2;
    separador = msg.isEmpty ? '' : ', ';
    msg += '$separador$cedulasDois de 2';
  }

  print(msg);
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));
