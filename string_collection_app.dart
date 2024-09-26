import 'dart:io';

void main() {
  // Step 1: String Manipulation
  print('Enter a string:');
  String userInput = stdin.readLineSync() ?? '';

  // String manipulations
  String concatenated = userInput + ' - processed'; // Concatenation
  String interpolated = 'The processed string is: $concatenated'; // Interpolation
  String substring = concatenated.substring(0, 5); // Extracting first 5 characters
  String upperCase = concatenated.toUpperCase(); // Converting to uppercase
  String lowerCase = concatenated.toLowerCase(); // Converting to lowercase
  String reversed = concatenated.split('').reversed.join(); // Reversing the string
  int length = concatenated.length; // Getting length of the string

  // Display results of string manipulations
  print(interpolated);
  print('Substring (first 5 characters): $substring');
  print('Uppercase: $upperCase');
  print('Lowercase: $lowerCase');
  print('Reversed: $reversed');
  print('Length: $length');

  // Step 2: Collections (List, Set, Map)
  // Initialize collections
  List<String> stringList = []; // List to store processed strings
  Set<String> stringSet = {}; // Set to ensure uniqueness of processed strings
  Map<String, String> stringMap = {}; // Map to store original and processed strings

  // Add results to collections
  stringList.add(concatenated); // Add to list
  stringSet.add(concatenated); // Add to set
  stringMap['original'] = userInput; // Store original input
  stringMap['processed'] = concatenated; // Store processed string

  // Display contents of collections
  print('List of processed strings: $stringList');
  print('Set of processed strings: $stringSet');
  print('Map of strings: $stringMap');

  // Step 3: File Handling
  File file = File('output.txt'); // File to write log entries

  // Prepare log entry with current date and time
  String logEntry = '[$currentDateTime] Processed String: $concatenated\n';

  // Write to file and handle potential errors
  try {
    file.writeAsStringSync(logEntry, mode: FileMode.append); // Append log entry
    print('Log entry added to file.');
  } catch (e) {
    print('Error writing to file: $e'); // Error handling
  }

  // Step 4: Date and Time Manipulation
  DateTime now = DateTime.now(); // Get current date and time
  DateTime futureDate = now.add(Duration(days: 7)); // Add 7 days to current date
  DateTime pastDate = now.subtract(Duration(days: 7)); // Subtract 7 days from current date

  // Display date and time information
  print('Current Date and Time: $now');
  print('Future Date (7 days later): $futureDate');
  print('Past Date (7 days earlier): $pastDate');
}

// Utility to get current date and time in ISO 8601 format
String get currentDateTime => DateTime.now().toIso8601String();