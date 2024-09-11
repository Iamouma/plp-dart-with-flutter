import 'package:intl/intl.dart'; // For date formatting

void main() {
  // 1. Formatting a Date
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd – HH:mm:ss').format(now);
  print("Formatted Date: $formattedDate");

  // 2. Parsing a Date
  String dateString = '2024-09-15 14:30:00';
  DateTime parsedDate = DateTime.parse(dateString);
  print("Parsed Date: $parsedDate");

  // 3. Manipulating Dates
  // Adding and subtracting days
  DateTime futureDate = now.add(Duration(days: 10)); // Add 10 days
  DateTime pastDate = now.subtract(Duration(days: 5)); // Subtract 5 days
  print("Future Date (10 days from now): $futureDate");
  print("Past Date (5 days ago): $pastDate");

  // 4. Calculating the Difference
  Duration difference = futureDate.difference(pastDate);
  print("Difference between future and past date: ${difference.inDays} days");

  // Additional example of formatting
  String customFormattedDate = DateFormat('EEEE, MMMM d, yyyy').format(now);
  print("Custom Formatted Date: $customFormattedDate");
}