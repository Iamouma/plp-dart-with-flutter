// Main function: Entry point of the Dart program
void main() {
  // Example usage of the convertAndDisplay function
  String numberString = "450";
  convertAndDisplay(numberString);
}

// Function to convert a String to int and double, then display the results
void convertAndDisplay(String numberStr) {
  // Convert the string to an int
  int intResult = int.parse(numberStr);
  
  // Convert the string to a double
  double doubleResult = double.parse(numberStr);
  
  // Print the results
  print("Original String: $numberStr");
  print("Converted to int: $intResult");
  print("Converted to double: $doubleResult");
}