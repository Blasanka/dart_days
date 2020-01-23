import 'package:dart_days/dart_days.dart';

void main() {
  var dartDays = DartDays();
  print('awesome: ${dartDays.timesAgo(DateTime.parse('2020-01-02'))}');
}
