import 'package:poo/utils.dart' as utils;

void main() {
  //Inicio Fibonacci
  print('Fibonacci sin usar recursividad: ');
  var cantIt = 20;
  var numIni = 0;
  var ultNum = 1;
  print(numIni);
  print(ultNum);
  for (var i = 0; i < (cantIt - 3); i++) {
    var numFin = numIni + ultNum;
    numIni = ultNum;
    ultNum = numFin;
    print(numFin);
  }
  print('Fibonacci usando recursividad: ');
  print(1);
  print(1);
  utils.fibonacci(1, 1, 1000);
  //Fin Fibonacci

  //Inicio Palíndroma
  utils.isPalindrome(
      'Amor azul Ramera de todo te di Mariposa colosal si yo de todo te di Poda la rosa Venus El atomo como tal es un evasor alado Pide todo te doy isla sol ocaso piramide Todo te dare mar luz aroma');
  utils.isPalindrome('somos o no somos');
  utils.isPalindrome('alquitran de mar azul');
  //Fin Palíndroma

  //Inicio Burble sort
  utils.burbleSort([5, 4, 2, 6, 7, 8, 3, 11]);
  utils.burbleSort([1, 6, 8, 9, 3]);
  utils.burbleSort([12, 14, 81, 9, 74]);
  //Fin Burble sort

  //Inicio quickSort
  utils.quickSort([4, 9, 2, 1, 6, 3, 8]);
  //Fin quickSort
}
