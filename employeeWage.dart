import 'dart:math';

void main() {
  Random number = Random();
  int empCheck = number.nextInt(2);
  if (empCheck == 1) {
    print("employee present");
  } else {
    print("Employee Abseent");
  }
}