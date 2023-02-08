int fibonacci(int numBef, int numAft, int numMax) {
  if (numBef + numAft >= numMax) {
    return numAft;
  }
  print(numBef + numAft);
  return fibonacci(numAft, numBef + numAft, numMax);
}

bool isPalindrome(String strUno) {
  print("Evaluando: $strUno");
  strUno = strUno.replaceAll(" ", "");
  strUno = strUno.toUpperCase();
  String cadena1 = "";
  String cadena2 = "";
  var tam = strUno.length;
  for (var i = 0; i < tam; i++) {
    String carac = strUno.substring(i, i + 1);
    cadena1 = cadena1 + carac;
  }
  for (var i = tam - 1; i >= 0; i--) {
    String carac = strUno.substring(i, i + 1);
    cadena2 = cadena2 + carac;
  }
  if (cadena1 == cadena2) {
    print("Es una palabra palìndroma");
    return true;
  } else {
    print("No Es una palabra palìndroma");
    return false;
  }
}

List<int> burbleSort(List<int> numIni) {
  print("Inicio: $numIni");
  var ctrl = 0;
  for (var a = 0; a < numIni.length; a++) {
    for (int b = 0; b < numIni.length - 1; b++) {
      var numA = numIni[b];
      var numB = numIni[b + 1];
      if (numA > numB) {
        ctrl = numA;
        numIni[b] = numIni[b + 1];
        numIni[b + 1] = ctrl;
      }
    }
  }
  print("Fin: $numIni");
  return numIni;
}

List<int> quickSort(List<int> numeros) {
  print(numeros);
  var arrIzq = [];
  var arrDech = [];
  var inicio = numeros[0];
  for (var i = 1; i < numeros.length; i++) {
    if (numeros[i] < inicio) {
      arrIzq.add(numeros[i]);
    } else {
      arrDech.add(numeros[i]);
    }
  }
  //Organizar arrIzq
  var ctrl = 0;
  for (var a = 0; a < arrIzq.length; a++) {
    for (int b = 0; b < arrIzq.length - 1; b++) {
      var numA = arrIzq[b];
      var numB = arrIzq[b + 1];
      if (numA > numB) {
        ctrl = numA;
        arrIzq[b] = arrIzq[b + 1];
        arrIzq[b + 1] = ctrl;
      }
    }
  }
  //Organizar arrDech
  var ctrlD = 0;
  for (var d = 0; d < arrDech.length; d++) {
    for (int e = 0; e < arrDech.length - 1; e++) {
      var numAd = arrDech[e];
      var numBd = arrDech[e + 1];
      if (numAd > numBd) {
        ctrlD = numAd;
        arrDech[e] = arrDech[e + 1];
        arrDech[e + 1] = ctrlD;
      }
    }
  }
  arrIzq.add(inicio);
  arrIzq.addAll(arrDech);
  print(arrIzq);
  return numeros;
}
