import 'dart:io';

void main() async {
  // Define file paths
  String inputFilePath = 'input.txt';  // File to read from
  String outputFilePath = 'output.txt'; // File to write to

  // Read content from the input file
  try {
    String content = await readFile(inputFilePath);
    print("Content read from file:\n$content");
    
    // Write new data to the output file
    await writeFile(outputFilePath, 'This is the new content for the output file.');
    print("Data has been written to $outputFilePath");
  } catch (e) {
    print('An error occurred: $e');
  }
}

// Function to read file content
Future<String> readFile(String filePath) async {
  try {
    final file = File(filePath);
    // Check if the file exists
    if (!await file.exists()) {
      throw FileSystemException("File does not exist", filePath);
    }
    // Read the file content
    return await file.readAsString();
  } catch (e) {
    // Handle errors
    print('Failed to read file: $e');
    rethrow; // Re-throw the error to be caught by the main function
  }
}

// Function to write data to a file
Future<void> writeFile(String filePath, String data) async {
  try {
    final file = File(filePath);
    // Write the data to the file
    await file.writeAsString(data);
  } catch (e) {
    // Handle errors
    print('Failed to write file: $e');
    rethrow; // Re-throw the error to be caught by the main function
  }
}