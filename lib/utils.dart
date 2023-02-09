
List<int> fibonacci(int maxNumber){
   int x1 = 0; int x2 = 1; int x3 = 0;
  List<int>  fibonacci=[]; for (int count = 1; x2 < maxNumber; count ++) {
    x3 = x1 + x2;
    x1 = x2;
    x2 = x3;
    fibonacci.add(x1);
  }
return fibonacci;
}

bool isPalindrome(String text){
  String regla=text.toLowerCase().replaceAll(' ', '').replaceAll(',', '').replaceAll('.', '').replaceAll('á', 'a').replaceAll('é', 'e').replaceAll('í', 'i').replaceAll('ó', 'o').replaceAll('ú', 'u')
;
    bool condicion;
  
   String reglainv=""; 

    for (var i = regla.length - 1; i >= 0; i--) {
       reglainv += String.fromCharCode(regla.runes.elementAt(i));
    } 
   if (regla==reglainv){
     condicion=true;
    } 
   else{
      condicion=false;
   }
  return condicion;
}

List<int> burbleShort(List<int> array){
  int arreglo = array.length;
  for (int i = 0; i < arreglo - 1; i++) {
    for (int x = 0; x < arreglo - i - 1; x++) {
      if (array[x] > array[x + 1]) {
        int temp = array[x];
        array[x] = array[x + 1];
        array[x + 1] = temp;
      }
    }
  }

  return (array);
}

List<int> quickSort(List<int> list){

  return list;
}