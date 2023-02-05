//Andrés Esteban Ávila - Algoritmos Dart

List<int> fibonacci(int maxNumber) {
  List<int> resultado = [1, 1]; //Lista con los dos primeros numeros de la secuencia
  int num1 = 1; //variables que almacena los 
  int num2 = 1; //dos ultimos numeros de la secuencia.

  for (int i = 1; num2 <= maxNumber; i++) { //el for incrementa 1 en cada iteración y continua hasta q
                                            // el num2 sea mayor que maxNumber
    int temporal = num1; //Se guarda la variable num1 en una variable temporal
    num1 = num2;
    num2 = temporal + num1;//se suma num1+num2 para obtener el siguiente número de la secuencia y se asigna a num2
    if (num2 > maxNumber) { //Si el num2 es mayor que el maxNumber, el for se termina.
      break;
    }
    resultado.add(num2);//si num2 es menor a maxNumber, se agrega num2 a la lista de resultado
  }
  return resultado; // Numeros de la secuencia calculados
}

bool isPalindrome(String text){
  text = text.replaceAll(" ", "") //reemplaza los espacios que puedan contener la cadena de texto
      .toLowerCase()//pone todas las letras en minusculas
      .replaceAll("á", "a")//se modifican los caracteres con simbolos espciales
      .replaceAll("é", "e")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u");
      
  final chars = text.split('');//se divide el texto en subcadenas

  String textrev = chars.reversed.join('');//organiza las subcadenas de manera inversa y se guardan en una nueva variable
  if (textrev == text){//si el texto al revés es igual al texto inicial
    return true;//cumple la condición
  }
  else{
    return false;//es falsa la condición
  }
  }

List<int> burbleShort(List<int> list){
 for (int i = list.length; i > 0; i--) { //for que recorre la lista desde el final hasta el principio
    for (int j = 1; j < i; j++) { //compara cada par de elementos consecutivos en la lista, y los ordena
      if (list[j - 1] > list[j]) {
        int temp = list[j - 1];// En cada iteración se compara el elemento de la pos j-1 con el elemento 
        list[j - 1] = list[j];//de la posición j. Si el elemento j-1 es mayor al elemento j
        list[j] = temp;// se intercambian usando la variable temporal temp.
      }
    }
  }
  return list; //la función devuelve una lista ordenada.
}

List<int> quickSort(List<int> list){
  if (list.length <= 1) return list; // Comprueba si la lista contiene uno o varios elementos. Si posee
                                    // uno o menos, se devuelve la lista sin modificar.
  
  int pivote = list[list.length - 1]; //Ultimo elemento de la lista como el pivote
  List<int> menor = []; //Almacena menores al pivote
  List<int> mayor = []; //Almacena mayores al pivote
  
  for (int i = 0; i < list.length - 1; i++) { // for que recorre todos lo elementos de la lista, menos el pivote.
    if (list[i] < pivote) {                   // mientra que los compara con el valor del pivote. Si un elemento
      menor.add(list[i]);                     // es menor al pivote, se agrega a la lista menor. Y si es mayor, se
    } else {                                  // agrega a la lista mayor.
      mayor.add(list[i]);
    }
  }
  
  return [...quickSort(menor), pivote, ...quickSort(mayor)]; // se duevuelve las tres listas concatenadas.
}

void main() {
  print(fibonacci(15));
  print(isPalindrome('anitalavalatina'));  // Output: true
  print(isPalindrome('oso'));    // Output: false
}