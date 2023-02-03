void main() {
  print('**-------Serie Fibonacci------**');
  int var1 = 0;
  int var2 = 1;
  int count = 0;
  int fibo = 0;

  while (count <= 25) {
    print(var1);
    fibo = var1 + var2;
    var1 = var2;
    var2 = fibo;
    count += 1;
  }
  print('************************************');
}
