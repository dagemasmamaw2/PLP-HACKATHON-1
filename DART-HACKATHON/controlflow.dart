/* Program 3: Determine Grade Based on Marks
Write a Dart program to determine the grade based on a student's marks. 
The program should print out the appropriate grade according to the following criteria:
- If the marks are greater than 85, print "Excellent".
- If the marks are between 75 and 85 (inclusive), print "Very Good".
- If the marks are between 65 and 75 (inclusive), print "Good".
- If the marks are below 65, print "Average". */

import 'dart:io';

void main() {
  stdout.write("Enter Student mark: ");
  num mark = num.parse(stdin.readLineSync()!);
  print(mark);
  if (mark > 85 && mark <= 100) {
    print("Excellent");
  } else if (mark >= 75 && mark <= 85) {
    print("Very Good");
  } else if (mark >= 65 && mark < 75) {
    print("Good");
  } else if (mark >= 0 && mark < 65) {
    print("Average");
  } else {
    print("The provided mark value is incorrect");
  }
}
