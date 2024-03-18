/* Program 2: Perform Mathematical Operations with Functions
Write a Dart program that performs two mathematical operations using functions.
 */

import 'dart:io';

//This function Multiply two number and return the result
//the number can be double or integer
num multiplyTwo(num firstNumber, num secondNumber) {
  return firstNumber * secondNumber;
}

//This function add two number and return the result
//the number can be double or integer
num addTwo(num firstNumber, num secondNumber) {
  return firstNumber + secondNumber;
}

void menu() {
  print("\n\t1.	Addition operation");
  print("\t2.	Multiplication operation ");
  print("\t3.	Exit ");
  stdout.write("\tPleas Your Choose: ");
}

void main() {
  String doYouContinue = 'y';
  while (doYouContinue == 'Y' || doYouContinue == 'y') {
    menu();
    int choose = int.parse(stdin.readLineSync()!);
    num firstNumber, secondNumber;
    stdout.write("Pleas Enter the First Number: ");
    firstNumber = num.parse(stdin.readLineSync()!);
    stdout.write("Pleas Enter the Second Number: ");
    secondNumber = num.parse(stdin.readLineSync()!);
    switch (choose) {
      case 1:
        //Testing addTwo function
        print(
            "$firstNumber + $secondNumber = ${addTwo(firstNumber, secondNumber)}");
        break;
      case 2:
        //Testing multiplyTwo function
        print(
            "$firstNumber * $secondNumber = ${multiplyTwo(firstNumber, secondNumber)}");
        break;
      case 3:
        exit(1);
      default:
        print("Incorrect choose pleas try again ");
    }
    stdout.write("Do you want to continue? (Y/N): ");
    doYouContinue = stdin.readLineSync()!;
  }
  print("\nThank You !!!");
}
