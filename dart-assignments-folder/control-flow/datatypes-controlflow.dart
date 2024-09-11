// Main function
void main() {
  // 1. Define a List of int numbers
  List<int> numbers = [2, 15, 7, 23, 102, 50, 8, 1, 99, 120];

  // 2. Use a for loop to iterate through the list
  for (int number in numbers) {
    // Print the current number
    print("Number: $number");

    // 3. Use if-else statements to check if the number is even or odd
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    // 4. Implement a switch statement to categorize numbers
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("$number is categorized as small.");
        break;
      default:
        if (number >= 11 && number <= 100) {
          print("$number is categorized as medium.");
        } else if (number > 100) {
          print("$number is categorized as large.");
        } else {
          print("$number is out of range.");
        }
    }
    // Print a separator for better readability
    print('---');
  }
}