void main() {
  print('Hello, Mwl.luhondo');

  //............... Variables declarations.............//
  int age = 25;
  late String name = "Nikodemo";
  bool isStudent = false;

  //...................Printing those variables...............//
  print(age);
  name = 'mmmmm';
  print(name);
  print(name);
  print(isStudent);

  //..............Changing variable age into nullable typr...........//
  int? nullableage = null;
  print(nullableage);

  //..............Final and Const Keywords...........//
  final String country = "Tanzania";
  const double pi = 3.14;
  print(country);
  print(pi);

  //...............wildcard variables.............//
  switch ((1, 2, 3)) {
    case (1, _, 3):
      print("Ignores underscore");
  }
}
