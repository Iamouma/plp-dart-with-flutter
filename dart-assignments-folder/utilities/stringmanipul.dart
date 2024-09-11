void main() {
  // 1. String Concatenation
  String firstName = "Mary";
  String lastName = "Rose";
  String fullName = firstName + " " + lastName; // Concatenation
  print("Full Name (Concatenation): $fullName");

  // 2. String Interpolation
  int age = 30;
  String introduction = "Hello, my name is $fullName and I am $age years old."; // Interpolation
  print("Introduction (Interpolation): $introduction");

  // 3. Substring Extraction
  String subName = fullName.substring(0, 4); // Extracts "John"
  print("Substring (Extraction): $subName");

  // 4. Case Conversion
  String upperCaseName = fullName.toUpperCase(); // Convert to uppercase
  String lowerCaseName = fullName.toLowerCase(); // Convert to lowercase
  print("Uppercase Name: $upperCaseName");
  print("Lowercase Name: $lowerCaseName");

  // 5. Reverse a String
  String reversedName = reverseString(fullName);
  print("Reversed Name: $reversedName");

  // 6. Count Length of String
  int nameLength = fullName.length;
  print("Length of Full Name: $nameLength");
}

// Function to reverse a string
String reverseString(String input) {
  return input.split('').reversed.join('');
}