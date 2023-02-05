
List<int> fibonacci(int serie) {
  int a = 0;
  int b = 1;
  int c = 0;
  List<int> arr = [];
  for (int i = 0; i < serie; i++) {
    c = b;
    arr.add(c);
    //   print(c);
    b = b + a;
    a = c;
  }
  return arr;
}

bool isPalindrome(String text){
  bool respuesta = true;
  var lista = text.replaceAll(' ', '').toLowerCase().split('');

  int tamanio = lista.length - 1;
  int recorrer = 0;
  if (tamanio % 2 == 0) {
    for (int i = 0; i < tamanio / 2; i++) {
      String a = lista.elementAt(recorrer);
      String b = lista.elementAt(tamanio - recorrer);
      if (a != b) {
        return false;
      }
    }
  } else {
    for (int i = 0; i <= tamanio / 2; i++) {
      String a = lista.elementAt(recorrer);
      String b = lista.elementAt(tamanio - recorrer);
      if (a != b) {
        return false;
      }
    }
  }
  return respuesta;
}

List<int> burbleShort(List<int> list){
 int tamanio = list.length;
  for (int i = 0; i < tamanio - 1; ++i) {
    for (int j = 0; j < tamanio - i - 1; ++j) {
      if (list[j + 1] < list[j]) {
        int x = list[j];
        list[j] = list[j + 1];
        list[j + 1] = x;
      }
    }
  }
  return list;
}

List<int> DoQuickSort(List<int> arr, int begin, int end) {
  if (begin < end) {
    int partitionIndex = partition(arr, begin, end);

    DoQuickSort(arr, begin, partitionIndex - 1);
    DoQuickSort(arr, partitionIndex + 1, end);
  }
  return arr;
}
 List<int> quickSort(List<int> a) {
    return DoQuickSort(a, 0, a.length - 1);
}

int partition(List<int> arr, int begin, int end) {
  int pivot = arr[end];
  int i = (begin - 1);

  for (int j = begin; j < end; j++) {
    if (arr[j] <= pivot) {
      i++;

      int swapTemp = arr[i];
      arr[i] = arr[j];
      arr[j] = swapTemp;
    }
  }

  int swapTemp = arr[i + 1];
  arr[i + 1] = arr[end];
  arr[end] = swapTemp;

  return i + 1;
}