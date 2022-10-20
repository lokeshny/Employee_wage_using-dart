import 'dart:math';

void main(List<String> args) {
  // int IS_FULL_TIME = 1;
  int EMP_RATE_PER_HOUR = 20;
  int MAX_HRS_IN_MONTH = 100;
  int noOfDays = 20;
  int empHrs = 0;
  int empWage = 0, totalEmpWage = 0;
  var totalWorkingDays = 0;
  int totalEmpHrs = 0;
  while (totalWorkingDays < noOfDays && totalEmpHrs <= MAX_HRS_IN_MONTH) {
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
    empWage = empHrs * EMP_RATE_PER_HOUR;
    totalEmpWage += empWage;
    totalWorkingDays++;
    totalEmpHrs += empHrs;
  }

  print("Total Employee Wage =  ${totalEmpWage}");
}