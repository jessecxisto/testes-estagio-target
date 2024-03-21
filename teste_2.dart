/*
2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na 
linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.



IMPORTANTE:

Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código

*/
import 'dart:math';

bool pertenceASequencia(int numero) {
  int num1 = 0;
  int num2 = 1;

  while (num2 < numero) {
    int temporario = num1 + num2;
    num1 = num2;
    num2 = temporario;
  }

  return num2 == numero;
}

void main() {
  int numeroAleatorio = Random()
      .nextInt(100); // Sorteia um número inteiro aleatório menor que 100.
  bool pertence = pertenceASequencia(numeroAleatorio);

  print("O número sorteado foi $numeroAleatorio.");

  if (pertence) {
    print("$numeroAleatorio pertence à sequência de Fibonacci.");
  } else {
    print("$numeroAleatorio não pertence à sequência de Fibonacci.");
  }
}
