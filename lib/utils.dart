List<int> fibonacci(int maxNumber) {
  List<int> resp = [1, 1];

  return fibonacciRecursivo(1, 1, maxNumber, resp);
}

List<int> fibonacciRecursivo(
    int beforeValue, int afterValue, int maxValue, List<int> list) {
  if (beforeValue + afterValue >= maxValue) {
    return list;
  }
  list.add(beforeValue + afterValue);
  return fibonacciRecursivo(
      afterValue, beforeValue + afterValue, maxValue, list);
}

List<int> fibonacci2(int maxNumber) {
  List<int> resp = [];
  int value = 0;
  int num1 = 1;
  int num2 = 1;
  while (value <= maxNumber) {
    if (resp.isEmpty) {
      resp.add(num1);
      resp.add(num2);
    }
    value = num1 + num2;
    if (value > maxNumber) {
      break;
    }
    resp.add(value);
    num1 = num2;
    num2 = value;
  }
  return resp;
}

bool isPalindrome(String text) {
  bool resp = false;
  String inverted = "";
  text = text
      .replaceAll(" ", "")
      .toLowerCase()
      .replaceAll("á", "a")
      .replaceAll("é", "e")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u");

  for (var i = text.runes.length - 1; i >= 0; i--) {
    inverted += String.fromCharCode(text.runes.elementAt(i));
  }

  if (text == inverted) {
    resp = true;
  }
  return resp;
}

List<int> burbleShort(List<int> list) {
  int length = list.length;
  int temp = 0;
  for (int i = 0; i < length - 1; i++) {
    for (int j = 0; j < length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

List<int> quickSort(List<int> list) {
  int last = list.length - 1;
  int first = 0;
  list = qSort(list, first, last);

  return list;
}

void swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

List<int> qSort(List<int> list, int first, int last) {
  if (first < last) {
    int pi = partition(list, first, last);
    qSort(list, first, pi - 1);
    qSort(list, pi + 1, last);
  }
  return list;
}

int partition(List<int> list, first, last) {
  if (list.isEmpty) {
    return 0;
  }
  int pivot = list[last];
  int i = first - 1;
  for (int j = first; j < last; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, last);
  return i + 1;
}
