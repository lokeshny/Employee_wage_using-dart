import 'dart:math';

class EmployeeWage {
  int empHrs = 0;
  int empWage = 0, totalEmpWage = 0;
  var totalWorkingDays = 0;
  int totalEmpHrs = 0;

  late final String _company;
  late final int _empRatePerHour;
  late final int _numOfWorkingDays;
  late final int _maxHrsPerMonth;

  EmployeeWage(String company, int empRatePerHour, int numOfWorkingDays,
      int maxHrsPerMonth) {
    this._company = company;
    this._empRatePerHour = empRatePerHour;
    this._numOfWorkingDays = numOfWorkingDays;
    this._maxHrsPerMonth = maxHrsPerMonth;
  }

  int employeeAttendence() {
    Random number = Random();
    var empCheck = number.nextInt(3);

    switch (empCheck) {
      case 0:
        empHrs = 0;
        print(" Absent, employee hours :${empHrs}");
        break;
      case 1:
        empHrs = 8;
        print(" Present-fulltime, employee hours :${empHrs}");

        break;
      default:
        empHrs = 4;
        print(" Present-parttime, employee hours :${empHrs}");

        break;
    }
    return empHrs;
  }

  String toString() {
    return "Total Employee Wage For Company  ${_company} is ${totalEmpWage}";
  }

  void employeeWage() {
    while (totalWorkingDays < _numOfWorkingDays &&
        totalEmpHrs <= _maxHrsPerMonth) {
      int empHrs = employeeAttendence();
      empWage = empHrs * _empRatePerHour;
      totalEmpWage += empWage;
      totalWorkingDays++;
      print("Employee Wage for day ${totalWorkingDays} is ${empWage}");
      totalEmpHrs += empHrs;
    }
    print("Total Wage of Employee from company ${_company} is ${totalEmpWage}");
  }
}

void main(List<String> args) {
  EmployeeWage reliance = new EmployeeWage("Reliance", 15, 10, 50);
  reliance.employeeWage();

  EmployeeWage dMart = EmployeeWage("DMart", 20, 5, 30);
  dMart.employeeWage();
}