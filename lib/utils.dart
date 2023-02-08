
List<int> fibonacci(int maxNumber){
   int var1 = 0;
  int var2 = 1;
  int fibo = 0;
  List<int>  fibonacci=[];
for (int count = 1; var2 < maxNumber; count ++) {

    fibo = var1 + var2;
    var1 = var2;
    var2 = fibo;
    fibonacci.add(var1);
  }
return fibonacci;
}



bool isPalindrome(String text){
String cadenatratada=text.toLowerCase().replaceAll(' ', '').replaceAll(',', '').replaceAll('.', '').replaceAll('á', 'a').replaceAll('é', 'e').replaceAll('í', 'i').replaceAll('ó', 'o').replaceAll('ú', 'u')
;
    bool estado;
  
   String cadenaInvertida=""; 

    for (var i = cadenatratada.length - 1; i >= 0; i--) {
       cadenaInvertida += String.fromCharCode(cadenatratada.runes.elementAt(i));
    } 
   if (cadenatratada==cadenaInvertida){
     estado=true;
    } 
   else{
      estado=false;
   }
  return estado;
}

List<int> burbleShort(List<int> list){

  var longitud = list.length;
  for (var i = 0; i < longitud; i++) { 
    for (var j = 0; j < longitud - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
return list;



}

List<int> quickSort(List<int> list){

  list.sort((int a, int b) => a.compareTo(b));
  return list;
}