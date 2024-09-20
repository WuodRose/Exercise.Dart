import 'dart:io';

void main() async {
  // Step 1: Get user input for string manipulation
  print("Enter a string: ");
  String userInput = stdin.readLineSync()!;

  // Step 2: Perform string manipulation
  String reversed = userInput.split('').reversed.join(); // Reversing the string
  int length = userInput.length; // Calculating length
  String upperCase = userInput.toUpperCase(); // Converting to uppercase
  String lowerCase = userInput.toLowerCase(); // Converting to lowercase
  String firstFive = userInput.length >= 5 ? userInput.substring(0, 5) : userInput; // Extracting the first 5 characters
  
  // Step 3: Store results in a collection (Map)
  Map<String, dynamic> data = {
    'original': userInput,
    'reversed': reversed,
    'length': length,
    'upperCase': upperCase,
    'lowerCase': lowerCase,
    'firstFiveChars': firstFive,
  };

  // Step 4: Write the results to a file
  File outputFile = File('user_data.txt');
  await outputFile.writeAsString("String Manipulation Data: $data\n");

  // Step 5: Log the current date and time when entry was made
  DateTime now = DateTime.now();
  await outputFile.writeAsString("Entry made at: $now\n", mode: FileMode.append);

  print("Data has been saved to 'user_data.txt' with a timestamp.");
}

