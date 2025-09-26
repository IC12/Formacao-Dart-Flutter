import 'dart:io';
import 'package:my_first_project/my_first_project.dart';

void main() {
  String? input = "";
  String operation = "";
  List<String> operations = <String>['+', '-', '*', '/'];
  double numberOne = 0;
  double numberTwo = 0;

  void calculate() {
    switch (operation) {
      case '+':
        sum(numberOne, numberTwo);
        break;
      case '-':
        subtract(numberOne, numberTwo);
        break;
      case '*':
        multiply(numberOne, numberTwo);
        break;
      case '/':
        divide(numberOne, numberTwo);
        break;
    }
  }

  void getOperation() { 
    print("Enter operation ${operations.toString()}:");
    input = stdin.readLineSync();

    if (input != null) {
      if (operations.contains(input)) {
        operation = input!;
      } else {
        print('invalid operation. Please try again.');
        getOperation();
      }
    }
  }

  print("Enter first number:");
  input = stdin.readLineSync();

  if (input != null) {
    if (input!.isNotEmpty) {
      numberOne = double.parse(input!);
    }
  }

  getOperation();

  print("Enter second number:");
  input = stdin.readLineSync();

  if (input != null) {
    if (input!.isNotEmpty) {
      numberTwo = double.parse(input!);
    }
  }

  print("Result:");
  calculate();

  print("Do you want to perform another operation? (y/n)");
  input = stdin.readLineSync();
  if (input != null && input!.toLowerCase() == 'y') {
    main();
  } else {
    print("Goodbye!");
  }
}
