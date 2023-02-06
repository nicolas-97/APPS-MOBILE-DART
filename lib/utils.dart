
import 'dart:html';

List<int> fibonacci(int maxNumber){
  var result = [1];
  var valor1=0,valor2=1,sum1=0,sum2=1;
  for (int i =0; i < maxNumber; i++ ){
    sum1 = valor1 + valor2;
    result.add(sum1);
    sum2 = sum2 + sum1;
    valor1 = valor2;
    valor2 = sum1;
  }
  return result;
}

bool isPalindrome(String text){
  var text1 = "";
  var text2 = "";
  var tam = text.trim();
  print(tam);
  for (var i = 0; i < tam.length; i++)
  {
    var carac = text.substring(i, i+1);
    if (carac != " ") {
      text1 = text1 + carac;
    } 
  }
  for (var i = tam.length - 1; i >= 0; i--)
  {
    var carac = text.substring(i, i+1);
    if (carac != " ") {
      text2 = text2 + carac;
    }
  }
  if (text1 == text2){
    return true;
  }else{
    return false;
  }
}

List<int> burbleShort(List<int> list){
  for (int j = 0; j < list.length - 1; j++) {
    for (int i = 0; i < list.length - 1 - j; i++) {
      if (list[i] > list[i + 1]) {
        int tmp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = tmp;
      }
    }
  }
  return list;
}
  

List<int> quickSort(List<int> list){
   for (int j = 0; j < list.length - 1; j++) {
    for (int i = 0; i < list.length - 1 - j; i++) {
      if (list[i] > list[i + 1]) {
        int tmp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = tmp;
      }
    }
  }
  return list;
}