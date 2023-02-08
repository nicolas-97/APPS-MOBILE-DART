import 'dart:core';
import 'package:collection/collection.dart';
import 'package:diacritic/diacritic.dart';

var fibMap = {};
Function eq = const ListEquality().equals;

List<int> fibonacci(int maxNumber) {
  var list = <int>[];
  var fib = 0;
  for (int i = 1; fib < maxNumber; i++) {
    fib = calcFibonacci(i);
    if (fib < maxNumber) list.add(fib);
  }
  return list;
}

bool isPalindrome(String text) {
  var cleanText = removeDiacritics(text).replaceAll(' ', '').toUpperCase();
  var list = cleanText.split("");
  var reversed = List.from(list.reversed);
  return eq(list, reversed);
}

List<int> burbleShort(List<int> list) {
  var temp = 0;
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        temp = list[j];
        list[j] = list[i];
        list[i] = temp;
      }
    }
  }
  return list;
}

List<int> quickSort(List<int> list) {
  doQuickSort(list, 0, list.length - 1);
  return list;
}

void doQuickSort(List<int> list, int left, int right) {
  if (left >= right) return;
  int pivot = list[(left + right) ~/ 2];
  int index = partition(list, left, right, pivot);
  doQuickSort(list, left, index - 1);
  doQuickSort(list, index, right);
}

int partition(List<int> list, int left, int right, int pivot) {
  while (left <= right) {
    while (list[left] < pivot) {
      left++;
    }
    while (list[right] > pivot) {
      right--;
    }
    if (left <= right) {
      swap(list, left, right);
      left++;
      right--;
    }
  }
  return left;
}

void swap(List<int> list, int left, int right) {
  var temp = list[left];
  list[left] = list[right];
  list[right] = temp;
}

int calcFibonacci(int maxNumber) {
  if (fibMap[maxNumber] != null) {
    return fibMap[maxNumber];
  }
  if (maxNumber < 2) {
    return maxNumber;
  }
  var total = calcFibonacci(maxNumber - 2) + calcFibonacci(maxNumber - 1);
  fibMap[maxNumber] = total;
  return total;
}
