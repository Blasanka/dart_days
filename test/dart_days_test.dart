import 'package:dart_days/dart_days.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    DartDays dartDays;

    setUp(() {
      dartDays = DartDays();
    });

    test('First Test', () {
      expect(dartDays.timesAgo(DateTime.parse('2020-01-02')), '21 days ago');
    });
  });
}
