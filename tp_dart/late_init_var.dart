
late String description;


void main(List<String> args) {
  print(args.runtimeType);
  print(args[0].runtimeType);
  print(args[1].runtimeType);
  print(args[0]);
  print(args[1]);

}

void main01() {
  int a = 3;
  const int b = 3 ; // init instant
  final int c; // init plus tard
  c=12;


  if (a == 3) {
    description = 'Feijoada!';
  }
  print(description);
}
