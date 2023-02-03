import 'package:diacritic/diacritic.dart';

List<int> fibonacci(int maxNumber) {
  List<int> fiboSerie = [];
  int ant = 0;
  int aft = 1;
  fiboSerie.add(aft);
  for (int i = 0; i < maxNumber; ++i) {
    int result = ant + aft;
    if (result > maxNumber) {
      break;
    }
    fiboSerie.add(result);
    ant = aft;
    aft = result;
    i = result;
  }
  return fiboSerie;
}

bool isPalindrome(String text) {
  text = text.replaceAll(' ', '');
  text = text.toLowerCase();
  text = removeDiacritics(text);
  String backPalin = '';

  for (int i = text.length - 1; i >= 0; i--) {
    if (text[i] == ' ') {
      continue;
    }
    backPalin += text[i];
  }

  if (text == backPalin) {
    return true;
  }

  return false;
}

List<int> burbleShort(List<int> list) {
  int arrayLength = list.length;

  for (int i = 0; i < arrayLength; i++) {
    for (int j = 0; j < arrayLength - 1; j++) {
      int currentValue = list[j];
      int nexValue = list[j + 1];
      if (currentValue > nexValue) {
        list[j] = nexValue;
        list[j + 1] = currentValue;
      }
    }
  }
  return list;
}

List<int> quickSort(List<int> list) {
  int high = list.length - 1;
  int low = 0;
  List<int> result = sort(list, low, high);
  return result;
}

List<int> sort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);

    sort(list, low, pi - 1);
    sort(list, pi + 1, high);
  }
  return list;
}

int partition(List<int> list, low, high) {
  if (list.isEmpty) {
    return 0;
  }

  int pivot = list[high];

  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i + 1, high);
  return i + 1;
}

void swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
