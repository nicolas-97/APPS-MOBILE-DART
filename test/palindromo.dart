void main() {
  String cadena = "A ti no, bonita.";
  String cadenatratada = cadena
      .toLowerCase()
      .replaceAll(' ', '')
      .replaceAll(',', '')
      .replaceAll('.', '');
  print(cadenatratada);

  String cadenaInvertida = "";

  for (var i = cadenatratada.length - 1; i >= 0; i--) {
    cadenaInvertida += String.fromCharCode(cadenatratada.runes.elementAt(i));
  }
  if (cadenatratada == cadenaInvertida) {
    print("Tu Palabra '" + cadena + "' es Un Palindromo...");
  } else {
    print("Tu Palabra '" + cadena + "' No es Un Palindromo...");
  }
}
