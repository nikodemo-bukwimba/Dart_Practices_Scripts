//........Loops Concept........//
import 'dart:io';

void main() {
  //.......for loop.......//
  var numbers = [];
  for (var i = 0; i < 2; i++) {
    numbers.add(() => print(i));
  }

  for (final c in numbers) {
    continue;
  }

  //....sometimes you don't want to know the current value of iteration counter.....//
  outerloop:
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      print('i = $i, j = $j');
      if (i == 2 && j == 2) {
        // i++;
        continue outerloop;
      }
    }
  }
}
