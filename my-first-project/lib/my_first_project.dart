  void sum(double numberOne, double numberTwo) {
    print(numberOne + numberTwo);
  }

  void subtract(double numberOne, double numberTwo) {
    print(numberOne - numberTwo);
  }

  void multiply(double numberOne, double numberTwo) {
    print(numberOne * numberTwo);
  }

  void divide(double numberOne, double numberTwo) {
    if (numberTwo != 0) {
      print(numberOne / numberTwo);
    } else {
      print('Error: Division by zero.');
    }
  }