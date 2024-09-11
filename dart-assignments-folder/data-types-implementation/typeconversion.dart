// Main function
void main() {
  // Example usage of the conversion functions

  // Convert a String to int
  String strNumber = "123";
  int convertedInt = stringToInt(strNumber);
  print("String to int: $convertedInt");

  // Convert a String to double
  String strDouble = "123.45";
  double convertedDouble = stringToDouble(strDouble);
  print("String to double: $convertedDouble");

  // Convert an int to String
  int intNumber = 456;
  String intToStr = intToString(intNumber);
  print("Int to String: $intToStr");

  // Convert an int to double
  double intToDouble = intToDoubleConversion(intNumber);
  print("Int to double: $intToDouble");
}

// Function to convert a String to int
int stringToInt(String str) {
  // Using int.parse() to convert the string to an integer
  return int.parse(str);
}

// Function to convert a String to double
double stringToDouble(String str) {
  // Using double.parse() to convert the string to a double
  return double.parse(str);
}

// Function to convert an int to String
String intToString(int number) {
  // Using number.toString() to convert the integer to a string
  return number.toString();
}

// Function to convert an int to double
double intToDoubleConversion(int number) {
  // Converting int to double by using number.toDouble()
  return number.toDouble();
}