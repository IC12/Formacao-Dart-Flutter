import 'dart:io';

void main() {
  double numberOne = 0;
  String operation = "";
  double numberTwo = 0;

  void sum() {
    print(numberOne + numberTwo);
  }

  void subtract() {
    print(numberOne - numberTwo);
  }

  void multiply() {
    print(numberOne * numberTwo);
  }

  void divide() {
    if (numberTwo != 0) {
      print(numberOne / numberTwo);
    } else {
      print('Error: Division by zero.');
    }
  }

  void calculate() {
    switch (operation) {
      case '+':
        sum();
        break;
      case '-':
        subtract();
        break;
      case '*':
        multiply();
        break;
      case '/':
        divide();
        break;
      default:
        print('Error: Invalid operation. Supported operations are +, -, *, /.');
    }
  }

  print("Enter first number:");
  String? input = stdin.readLineSync();

  if (input != null) {
    if (input.isNotEmpty) {
      numberOne = double.parse(input);
    }
  }

  print("Enter operation (+, -, *, /):");
  input = stdin.readLineSync();

  if (input != null) {
    operation = input;
  }

  print("Enter second number:");
  input = stdin.readLineSync();

  if (input != null) {
    if (input.isNotEmpty) {
      numberTwo = double.parse(input);
    }
  }

  print("Result:");
  calculate();
}
