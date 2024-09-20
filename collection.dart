void main() {
  collection();
}

void collection() {
  // List Operations
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Banana');
  print("List of Fruits: $fruits");
  for (var fruit in fruits) {
    print("Fruit: $fruit");
  }

  // Set Operations - No duplicates allowed
  Set<int> numbers = {1, 2, 3};
  numbers.add(4);
  numbers.add(3); // This will not be added since sets don't allow duplicates
  print("Set of Numbers: $numbers");

  // Map Operations 
  Map<String, int> ages = {'Michael': 25, 'Rose': 30};
  ages['Odhiambo'] = 35;
  ages.remove('Rose');
  print("Map of Ages: $ages");
  ages.forEach((key, value) => print("$key is $value years old"));
}

