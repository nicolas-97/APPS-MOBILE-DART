
List<int> fibonacci(int maxNumber){
 print('**-------Serie Fibonacci------**');
  int var1 = 1;
  int var2 = 1;
  int count = 0;
  int fibo = 0;

var arreglo =[]  ;
  while (count <= maxNumber) {
    print(var1);
    arreglo.add(var1);
    fibo = var1 + var2;
    var1 = var2;
    var2 = fibo;
    count += 1;
  }
  return arreglo;
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
