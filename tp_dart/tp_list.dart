void main(List<String> args) {
  const list = [1, 2, 3];
  print("Taille : " + list.length.toString());
  print("Taille : ${list.length}");
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('----------');
  for (var value in list) {
    print(value);
  }
  print('----------');

  int cpt = 0;
  while (cpt < list.length) {
    print(list[cpt++]);
  }

// list.remove(2);
// list.add(2);
  print(list);

// c++
// c = 0
// a=c
// c=c+1

// ++c
// c = 0
// c=c+1
// a=c

  var c = 0;
  var a = ++c;
  print("a = $a, c = $c");
  
  const list2 = [10, 20, 30];
  list2.forEach(theEachFunction);
  print("---------");
  list2.forEach((element) { print("valeur : $element");});
  print("---------");
  var list3 = list2.map((e) =>  e*3).toList();
  print(list3.runtimeType);
  print(list3);
  print("---------");

  var hello = (name) => print("hello $name");
  hello("toto");
  print(hello);


  var inc = buildInc(12);
  print("-------");
  var d = inc(1); // 13
  print(d);
  d = inc(5); // 13
  print(d);
  d = inc(18); // 13
  print(d);

}

Function buildInc(int c){
  print("call buildInc");

  return (valueToInc) => c+valueToInc;
}

void theEachFunction(int e){
  print("valeur : $e");
}