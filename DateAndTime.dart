void main() {
  dateAndTime();
}

void dateAndTime() {
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 10));
  
  print("Current Date and Time: $now");
  print("Future Date (5 days later): $futureDate");
  print("Past Date (10 days ago): $pastDate");

  // Calculating difference between two dates
  Duration difference = futureDate.difference(pastDate);
  print("Difference between Future and Past Date: ${difference.inDays} days");

  // Formatting Date
  print("Formatted Date: ${now.year}-${now.month}-${now.day}");
}
