import 'dart:io';
import 'package:intl/intl.dart'; // For date formatting

void main() async {
  // Initialize variables
  List<String> results = [];
  String logFilePath = 'log.txt';

  // Simulate user input
  List<String> userInputs = [
    'hello world',
    'dart programming',
    'file handling in dart'
  ];

  // Process each input
  for (String input in userInputs) {
    // Perform string manipulation
    String manipulatedString = manipulateString(input);

    // Get current date and time
    String currentDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    // Create log entry
    String logEntry = '[$currentDateTime] $manipulatedString';

    // Add to results
    results.add(logEntry);

    // Output to console
    print(logEntry);
  }

  // Save results to a file
  await saveToFile(results, logFilePath);

  print("Data has been saved to $logFilePath");
}

// Function to perform string manipulation
String manipulateString(String input) {
  String reversed = input.split('').reversed.join('');
  String upperCase = input.toUpperCase();
  return 'Original: $input, Reversed: $reversed, Uppercase: $upperCase';
}

// Function to save data to a file
Future<void> saveToFile(List<String> data, String filePath) async {
  try {
    final file = File(filePath);
    // Write the data to the file
    await file.writeAsString(data.join('\n'), mode: FileMode.write);
  } catch (e) {
    // Handle errors
    print('Failed to write file: $e');
  }
}