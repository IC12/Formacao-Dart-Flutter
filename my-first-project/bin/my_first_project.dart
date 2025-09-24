import 'dart:io';

void main() {
  print("Enter first number:");
  double numberOne = double.parse(stdin.readLineSync()!);
  print("Enter second number:");
  double numberTwo = double.parse(stdin.readLineSync()!);
  print("Enter operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

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
