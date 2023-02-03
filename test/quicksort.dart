void main() {
  Map<String, int> vectores = {'a': 1, 'b': 2};

  List<int> listadatos = [-9999, -12, -000, -1, -2, 99, 678];

  listadatos.sort((int a, int b) => a.compareTo(b));
  print(listadatos);
}
