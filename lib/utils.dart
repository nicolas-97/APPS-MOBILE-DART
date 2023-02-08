
List<int> fibonacci(int maxNumber){
  
  List<int> list = [1];
  return [1] + fibonacciRecursive(1,1, list, maxNumber);
}

List<int> fibonacciRecursive(int beforeValue, int afterValue, List<int> list, int maxValue){

  if(beforeValue + afterValue >= maxValue){
    return list;
  }

  list.add(beforeValue + afterValue);

  return fibonacciRecursive(afterValue, beforeValue + afterValue, list, maxValue);
}

bool isPalindrome(String text){
  return true;
}

List<int> burbleShort(List<int> list){
  return list;
}

List<int> quickSort(List<int> list){
  return list;
}