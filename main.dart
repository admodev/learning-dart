void main() {
    // Variable Types
    String name = 'Adolfo';

    // Built-in functions
    print('Hello, ${name}');

    int age = 27;
    int youngAge = 25;

    // Control structures
    if (age > youngAge) {
        print('You are growing older!');
    }

    // Iteration
    List<String> fruits = ['Apple', 'Watermelon', 'Lemon', 'Grapes'];

    for (final fruit in fruits) {
        print(fruit);
    }

    // Get runtime type of variable
    print(fruits.runtimeType);
}
