// Libraries imports
//
// core libraries
import 'dart:math';

// Importing libraries from external packages
//import 'package:test/test.dart';

// Importing files
//import 'path/to/my_other_file.dart';

// Classes
class Spacecraft {
  String? name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method
  void describe() {
    print('Spacecraft: $name');

    // Type promotion doesn't work on getters
    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;

      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  // Variable Types
  String name = 'Adolfo';

  int age = 27;
  int youngAge = 25;
  int year = 2000;
  List<String> fruits = ['Apple', 'Watermelon', 'Lemon', 'Grapes'];

  // Built-in functions
  print('Hello, ${name}');

  // Get runtime type of variable
  print(fruits.runtimeType);

  // Control structures
  if (age > youngAge) {
    print('You are growing older!');
  }

  while (year < 2024) {
    year += 1;
    print(year);
  }

  // Iteration
  for (final fruit in fruits) {
    print(fruit);
  }

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // Functions
  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;

    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(30);

  print(result);

  // Shorthand (arrow) function syntax
  fruits.where((fruitName) => fruitName.contains('mon')).forEach(print);

  // Use of the math library
  var randomNumber = Random().nextInt(10).toString();

  print(randomNumber);

  // Classes
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
