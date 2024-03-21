import 'dart:io';

String inverterTexto(String texto) {
  String textoInvertido = "";
  for (int i = texto.length - 1; i >= 0; i--) {
    textoInvertido += texto[i];
  }
  return textoInvertido;
}

main() {
  stdout.write("Digite um texto qualquer para vê-lo invertido: ");
  String texto = stdin.readLineSync()!; // Entrada do usuário
  String textoInvertido = inverterTexto(texto);
  print("Você digitou: $texto. ");
  print("E invertendo fica: $textoInvertido.");
}
