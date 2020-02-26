import 'package:dart_days/dart_days.dart';

void main() {
  var dartDays = DartDays();
  print('Times Ago: ${dartDays.timesAgo(DateTime.parse('2020-01-02'))}');
  print('Times Left: ${dartDays.timesLeft(from: DateTime.parse('2019-01-02'), to: DateTime.parse('2020-01-02'))}');
  print('Get number of days in current month: ${DartDays.numberOfDaysInThisMonth()}');
  print('Days Name of week: ${DartDays.daysNameOfWeek().join(", ")}');
  print('Name of this month: ${DartDays.nameOfMonth(DateTime.now().month)}');
  print('Name of the first day of this month: ${DartDays.nameOfFirstDayOfMonth()}');
}
