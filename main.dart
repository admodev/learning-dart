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
}
