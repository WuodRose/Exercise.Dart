void main() {
  stringManipulation();
}

void stringManipulation() {
  // String Concatenation
  String str1 = "Hello";
  String str2 = "World";
  String concatenated = str1 + " " + str2;
  print("Concatenated String: $concatenated");

  // String Interpolation
  String interpolated = "$str1, $str2! Welcome to Dart!";
  print("Interpolated String: $interpolated");

  // Substring Extraction
  String extracted = interpolated.substring(0, 5); // Extracting "Hello"
  print("Extracted Substring: $extracted");

  // Case Conversion
  print("Uppercase: ${interpolated.toUpperCase()}");
  print("Lowercase: ${interpolated.toLowerCase()}");

  // Reversing a String
  String reversed = interpolated.split('').reversed.join();
  print("Reversed String: $reversed");

  // String Length
  print("String Length: ${interpolated.length}");
}
