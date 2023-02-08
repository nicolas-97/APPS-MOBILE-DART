import 'package:diacritic/diacritic.dart';
import 'dart:html';

List<int> fibonacci(int maxNumber){
  var firstList = [1,1];
  return RecursiveFibonacci(1, 1, maxNumber,firstList);
}

List<int> RecursiveFibonacci(int numBefore, int numAfter, int numMax, var list){
  var numTotal = numBefore + numAfter;
  if ( numTotal >= numMax) {
    return list;
  }
  list.add(numTotal);
  return RecursiveFibonacci(numAfter,numTotal,numMax,list);
}

bool isPalindrome(String text){
  var text1 = "";
  var text2 = "";
  var tempText = text.toUpperCase();
  var textSinTildes = removeDiacritics(tempText);
  for (var i = 0; i < textSinTildes.length; i++)
  {
    var carac = textSinTildes.substring(i, i+1);
    if (carac != " ") {
      text1 = text1 + carac;
    } 
  }
  for (var i = textSinTildes.length - 1; i >= 0; i--)
  {
    var carac = textSinTildes.substring(i, i+1);
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