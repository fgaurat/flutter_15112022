void main(List<String> args) {
  var n = [1, 2, 3];
  var n2 = [
    for (var i in n)
      if (i * 2 > 4) i * 2
  ];

  var b = true;

  var children = [0, 1, 2, if (b) 3];

  print(children);
}
