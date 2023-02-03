void main() {
  var lista = [2, 12, 52, 62, 1, 0, -10, -750];
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
}
