//............arthimetic operators.............//
void main() {
  assert(2 + 3 == 5);
  assert(3 - 2 == 1);
}

//......unary operator...........//
void prefixAndPostfix() {
  int a;
  int b;

  a = 0;
  b = ++a; //incriments a before b gets its value.
  assert(a == b);

  a = 0;
  b = a++; //incriments a after b gets its value.
  assert(a != b);
}

//.......equality and relational operator..........//
void equalityAndRelationalOperator() {
  assert(2 == 2); // Checks equality wheather 2 is equal to 2
  assert(3 != 2); // Checks equality wheather 3 is not equal to 2
  assert(3 > 2); //compares if 3 is greater than 2 returns true
  assert(5 >= 5); //compares if 5 is greater or equal to 5
  assert(3 <= 8); //compares if 3 ia less or equal to 8
}

//...........Type Test operators................//
void typeTestOperator() {
  //...(as)...//
  //...(is)...//
  //...(is!)...//

  //....The result of 'obj is T' is true is 'obj' impliments the interface provided by 'T'....//
  var obj;
  obj is Object;

  //....use the 'as' operator to cast an object to a particular type if and only if you are sure that the object is of that type....//
  (employee as Person).firstName = 'Luhondo';

  //....if you are not sure the obj is of type T, then use 'is' operater to check before using the object.......//
  if (employee is Person) {
    employee.firstName = "Luhondo";
  }

  //.........assignment operator..........//
  var a = 8; //...assign value to a

  b ??= 10; //...assign value to b if b is null otherwise b stay the same.

  //.....compound assignment operator.........//
  a += b;
}

//.........logical operator...........//
void logical() {
  if (!done && (col == 0 || col == 3)) {
    //.....Do something......
  }

  //.....Bitwise and shift operator.......//
  assert('To be learned more');

  //.....conditional expression........//
  var visibility = isPublic ? 'Public' : 'Private';

  //...if boolean expr test for null......//
  String playerName(String name) => name ?? 'Guest';

  String playerName(String name) => name != null ? name : 'Guest';


  //........cascade operator........//
  String paint = Paint();
  ..color = Colors.Black;
  ..strokeCape = StrokeCap.round;

  //....if the object that cascade operate on can be null.........//
  String? paint = Paint();
  ?..color = Colors.Black;
  ..strokeCape = StrokeCape.round;
}
