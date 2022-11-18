void main(List<String> args) {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  // print(gifts['first']);

  for (var element in gifts.entries) {
    print("${element.key} => ${element.value}");
  }
  print('-------');
  for (var k in gifts.keys) {
    print("${k} => ${gifts[k]}");
  }
  print('-------');
  for (var v in gifts.values) {
    print("$v");
  }
}
