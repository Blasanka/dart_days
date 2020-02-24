import 'package:dart_days/dart_days.dart';

void main() {
  var dartDays = DartDays();
  print('Times Ago: ${dartDays.timesAgo(DateTime.parse('2020-01-02'))}');
  print('Times Left: ${dartDays.timesLeft(to: DateTime.parse('2020-01-02'))}');
  print('Get number of days in current month: ${DartDays.numberOfDaysInCurrentMonth()}');
}
