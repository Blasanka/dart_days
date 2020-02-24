Simple yet powerful Dart and Flutter Date manipulation package.

## Usage

A light weight dart library for date manipulation:

```dart
import 'package:dart_days/dart_days.dart';
       
void main() {
   var dartDays = DartDays();
   print('Times Ago: ${dartDays.timesAgo(DateTime.parse('2020-01-02'))}');
   print('Times Left: ${dartDays.timesLeft(DateTime.parse('2020-01-02'))}');
   print("Number of days in current month: ${DartDays.numberOfDaysInThisMonth()}");
  print('Days Name of week: ${DartDays.daysNameOfWeek().join(", ")}');
  print('Name of this month ${DartDays.nameOfMonth(1)}');
}

```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Blasanka/dart_days/issues/new
