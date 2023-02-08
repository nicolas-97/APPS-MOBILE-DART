void main() {
  /* Fibonacci */
  int var1 = 1;
  int var2 = 1;
  int count = 0;
  int fibo = 0;
  var fibonacci=[];
  while (count <= 25) {
    fibonacci.add(var1);
    fibo = var1 + var2;
    var1 = var2;
    var2 = fibo;
    count += 1;

  }
     print(fibonacci);
    /* Bubershort */
  var lista=[2,12,52,62,1,0,-10,-750];
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
print(lista);
  /* Palindromo */
  String cadena= "A ti no, bonita.";
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
  print(estado);
   
      /* Quicksort */
    Map<String, int> vectores = {'a': 1, 'b': 2};

  List<int> listadatos = [-9999999999,-12,-000000000,-1,-2,99,678,88,10,15,14,];

  listadatos.sort((int a, int b) => a.compareTo(b));
  print(listadatos);
  
}