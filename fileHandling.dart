import 'dart:io';

Future<void> main() async {
  await fileHandling();
}

Future<void> fileHandling() async {
  try {
    // Reading from input.txt
    File inputFile = File('input.txt');
    if (!await inputFile.exists()) {
      throw Exception("input.txt does not exist.");
    }

    String content = await inputFile.readAsString();
    print("File Content: $content");

    // Writing new data to output.txt
    File outputFile = File('output.txt');
    await outputFile.writeAsString('New Data: $content');
    print("Let's have Fun with Dart");

  } catch (e) {
    // Handling any errors during file operations
    print("Error during file operations: $e");
  }
}
