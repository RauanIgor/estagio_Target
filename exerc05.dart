import 'dart:io';

void main() {
  String str = "Hello Word";
  List<String> str_invertida = inverteString(str.split(''));
  print("A string invertida é: ${str_invertida.join('')} ");
}

List<String> inverteString(List<String> str) {
  int i = 0;
  int j = str.length - 1;

  while (i < j) {
    String temp = str[i];
    str[i] = str[j];
    str[j] = temp;
    i++;
    j--;
  }
  return str;
}
