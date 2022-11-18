
void printInteger(int aNumber) {
  print("The number is $aNumber."); // Print to console.
}


main(){
  var a = 42;
  print('Hello');
  a = 1;
  String b = "toto";
  print(a.runtimeType);
  print(b);
  print(b.runtimeType);
  printInteger(a);

  int result = add(1,2);
  print("result = $result");
  result = add2(a: 2,j: 3);


  Object name = 'Bob';
  print(name.runtimeType);

  int? lineCount;
  int lineCount1;
  print(lineCount);

}

int add(int a, int j) {
  return a+j;
}

int add2({int a=0, int j=0}) {
  return a+j;
}