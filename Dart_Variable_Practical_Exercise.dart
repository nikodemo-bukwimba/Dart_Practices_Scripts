//.........declaration and initialization...........//
void main() {
  String appName = "Inventory Manager";
  int maxUsers = 100;
  double version = 1.5;
  bool isProduction = false;

  //........Part B..............//
  var currentUsers = 10;
  final startTime = DateTime.now();
  const piValue = 3.14159;
  //The variable which can be reassigned later is var currentUsers. Because it is mutable variable.

  //..........Part C...........//
  currentUsers = 15;
  // startTime = DateTime.now();
  //...Rise error: can't assign to startTime, because it is immutable variable.

  int? discountPercent;

  discountPercent = 20;
  discountPercent = null;

  print(discountPercent);

  var role = "Admin";
  String position = "Admin";

  //These has no runtime difference//
  print(role);
  print(position);

  //...Bonus Challenge.........//
  var environment = const(if (isProduction) => "PRODUCTION"; "DEVELOPMENT" );
}
