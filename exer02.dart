import 'dart:io';

// Função para verificar se um número pertence à sequência de Fibonacci
bool pertenceFib(int numero) {
  int a = 0, b = 1, c = 1;
  /*
  a função execulta até chegar ao primeiro número que é maior ou igual 
  ao número fornecido pelo usuário para não precisar calcular toda
  seguencia (pois exige muita memoria), e só depois conferir se o numero fornecido pertence a seguencia
  ou não.
  */
  while (c < numero) {
    c = a + b;
    a = b;
    b = c;
  }
  return c == numero;
}

void main() {
  // Obter o número da entrada do usuario
  print("Digite um número:");
  String? num_entrada = stdin.readLineSync();
  
  //converter a string de entrada em um valor numerico 
  int numero = int.parse(num_entrada!);

  // Verificar se o número pertence à sequência de Fibonacci
  if (pertenceFib(numero)) {
    print("$numero pertence à sequência de Fibonacci.");
  } else {
    print("$numero não pertence à sequência de Fibonacci.");
  }
}


