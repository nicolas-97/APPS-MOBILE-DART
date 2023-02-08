
List<int> fibonacci(int maxNumber){
   int var1 = 1;
  int var2 = 1;
  int count = 0;
  int fibo = 0;
  List<int>  fibonacci=[];
  while (count <= maxNumber) {
    fibonacci.add(var1);
    fibo = var1 + var2;
    var1 = var2;
    var2 = fibo;
    count += 1;

  }
return fibonacci;
}



bool isPalindrome(String text){
String cadena= "somos o no somos";
   String cadenatratada=cadena.toLowerCase().replaceAll(' ', '').replaceAll(',', '').replaceAll('.', '');
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
 var lista=[ 9,6,1,3,8];
  var longitud = lista.length;
  for (var i = 0; i < longitud; i++) { 
    for (var j = 0; j < longitud - i - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        var temp = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = temp;
      }
    }
  }
return lista;



}

List<int> quickSort(List<int> list){


  List<int> listadatos = [6 ,3,8,9,1];

  listadatos.sort((int a, int b) => a.compareTo(b));
  return listadatos;
}