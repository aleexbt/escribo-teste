import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';

void main() {
  print('===== Digite um número =====');
  int numberInput =
      int.tryParse(stdin.readLineSync(encoding: utf8) ?? '') ?? -1;

  if (numberInput < 0) {
    print('Número inválido.');
    return;
  }

  int calc(int number) {
    List<int> numbers = [];

    for (int i = 0; i < number; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        numbers.add(i);
      }
    }
    return numbers.sum;
  }

  print('O resultado da soma de todos os números é: ${calc(numberInput)}');
}
