
List<int> fibonacci(int maxNumber){
  int prev = 0,next = 1,result = 0;
  List <int> resultadofibo=[];
for (int count = 1; next < maxNumber; count ++) {
    result = prev + next;
    prev = next;
    next = result;
    resultadofibo.add(prev);
  }
return resultadofibo;
}

 
bool isPalindrome(String text){
  text=text.replaceAll(" ", "");
  text=text.toLowerCase();
  text=text.replaceAll("á", "a");
  text=text.replaceAll("í", "i");
  
  String alrevez= text.split('').reversed.join();
  if (alrevez == text){
    return true;
  }
  else{
    return false;
  }
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
  if (list.length <= 1) return list;
  int pivote = list[list.length - 1];
  List<int> menor = []; 
  List<int> mayor = [];
  for (int i = 0; i < list.length - 1; i++) { 
    if (list[i] < pivote) {                  
      menor.add(list[i]);                     
    } else {                                
      mayor.add(list[i]);
    }
  }
  return [...quickSort(menor), pivote,...quickSort(mayor)]; 
}
