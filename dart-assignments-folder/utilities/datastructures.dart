void main() {
  // **Lists**: Ordered collections that can contain duplicate items.

  // Creating a list of integers
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List: $numbers");

  // Adding items to the list
  numbers.add(6);
  numbers.addAll([7, 8]);
  print("List after adding items: $numbers");

  // Removing items from the list
  numbers.remove(3); // Removes the first occurrence of the number 3
  numbers.removeAt(0); // Removes item at index 0
  print("List after removing items: $numbers");

  // Iterating over the list
  print("Iterating over List:");
  for (var number in numbers) {
    print(number);
  }

  // **Sets**: Unordered collections that do not allow duplicate items.

  // Creating a set of strings
  Set<String> uniqueFruits = {"Apple", "Banana", "Cherry"};
  print("Original Set: $uniqueFruits");

  // Adding items to the set
  uniqueFruits.add("Date");
  uniqueFruits.add("Banana"); // Duplicate item, will not be added
  print("Set after adding items: $uniqueFruits");

  // Removing items from the set
  uniqueFruits.remove("Cherry");
  print("Set after removing items: $uniqueFruits");

  // Iterating over the set
  print("Iterating over Set:");
  uniqueFruits.forEach((fruit) => print(fruit));

  // **Maps**: Collections of key-value pairs, where each key is unique.

  // Creating a map with String keys and int values
  Map<String, int> studentGrades = {
    "Alice": 85,
    "Bob": 92,
    "Charlie": 78
  };
  print("Original Map: $studentGrades");

  // Adding items to the map
  studentGrades["Daisy"] = 90;
  print("Map after adding items: $studentGrades");

  // Removing items from the map
  studentGrades.remove("Charlie");
  print("Map after removing items: $studentGrades");

  // Iterating over the map
  print("Iterating over Map:");
  studentGrades.forEach((name, grade) {
    print('$name: $grade');
  });

  // **Appropriate Use Cases**:

  // Lists are ideal for ordered collections where duplicates are allowed,
  // such as maintaining a list of tasks or a sequence of numbers.

  // Sets are suitable when you need a collection of unique items, e.g., 
  // unique user IDs or a collection of tags.

  // Maps are perfect for key-value pairs, like storing user data where each
  // user has a unique identifier or mapping names to grades.
}