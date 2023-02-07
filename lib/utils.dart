
List<int> fibonacci(int maxNumber){
  return [1,2,3,4,5];
}

bool isPalindrome(String text){
  return true;
}

List<int> burbleShort(List<int> list){
  
  int largo = list.length; 
  for (int i = 0; i < largo - 1; i++) { 
    for (int j = 0; j < largo - i - 1; j++) { 
      if (list[j] > list[j + 1]) { 
  
        int temp = list[j]; 
        list[j] = list[j + 1]; 
        list[j + 1] = temp; 
      } 
    } 
  } 
  return (list); 
}
 

List<int> quickSort(List<int> list){
  return list;
}