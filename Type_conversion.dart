void main() {
  //............... Type Conversion.............//

  //.........Int to String conversion............//
  int intValue = 42;
  String stringValue = intValue.toString();
  print('this is a string value: $stringValue');
  print(stringValue.runtimeType);

  //.............String to Int conversion..............//
  String stringNumber = '15';
  int parsedInt = int.parse(stringNumber);
  print('this is an interger value: $parsedInt');

  //.................Int to Double Conversion...............//
  double doublealue = 1;
  print("Int of value 1 is automatically converted to double: $doublealue");

}
