// Main function
void main() {
  // Define an integer representing the day of the week
  int dayNumber = 3; // You can change this value to test different days

  // Call the function to print the day of the week
  printDayOfWeek(dayNumber);
}

// Function to print the day of the week based on the given integer
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number. Please enter a number between 1 and 7.");
  }
}