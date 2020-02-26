import 'dart:developer';

class DartDays {
  String _timeDifferenceAsString(DateTime from, DateTime to) {
    // ignore: omit_local_variable_types
    Duration dif = to.difference(from);
    if (dif.inDays > 365) {
      final years = (dif.inDays / 365).floor();
      final prefix = ((dif.inDays / 365).floor() == 1) ? 'year' : 'years';
      return '$years $prefix';
    } else if (dif.inDays > 30) {
      final months = (dif.inDays / 30).floor();
      final prefix = ((dif.inDays / 30).floor() == 1) ? 'month' : 'months';
      return '$months $prefix';
    } else if (dif.inDays > 7) {
      final weeks = (dif.inDays / 7).floor();
      final prefix = (dif.inDays / 7).floor() == 1 ? 'week' : 'weeks';
      return '$weeks $prefix';
    } else if (dif.inDays > 0) {
      final days = dif.inDays;
      final prefix = dif.inDays == 1 ? 'day' : 'days';
      return '$days $prefix';
    } else if (dif.inHours > 0) {
      final hours = dif.inHours;
      final prefix = dif.inHours == 1 ? 'hour' : 'hours';
      return '$hours $prefix';
    } else if (dif.inMinutes > 0) {
      final minutes = dif.inMinutes;
      final prefix = dif.inMinutes == 1 ? 'minute' : 'minutes';
      return '$minutes $prefix';
    } else if (dif.inSeconds > 0) {
      final seconds = dif.inSeconds;
      final prefix = dif.inSeconds == 1 ? 'second' : 'seconds';
      return '$seconds $prefix';
    } else if (dif.inSeconds == 0) {
      return 'just now';
    } else {
      return 'finished';
    }
  }

  String timesAgo(DateTime d) {
    final timeDif = _timeDifferenceAsString(d, DateTime.now());

    if (timeDif == 'just now') {
      return timeDif;
    } else if (timeDif == 'finished') {
      return '';
    }

    return '$timeDif ago';
  }

  String timesLeft({DateTime from, DateTime to}) {
    if (to == null) {
      return _timeDifferenceAsString(from, DateTime.now());
    } else {
      return _timeDifferenceAsString(from, to);
    }
  }

  static int numberOfDaysInThisMonth() {
    final date = DateTime.now();
    final dateForValues = DateTime(date.year, date.month + 1, 0);
    return dateForValues.day;
  }

  static int numberOfDaysInMonth(int month) {
    final date = DateTime.now();
    final dateForValues = DateTime(date.year, month + 1, 0);
    return dateForValues.day;
  }

  static int numberOfDaysForDate(DateTime date) {
    final dateForValues = DateTime(date.year, date.month + 1, 0);
    return dateForValues.day;
  }

  static String nameOfMonth(int month, {bool isCapitalized = false}) {
    switch (month) {
      case DateTime.january:
        return isCapitalized ? 'January'.toUpperCase() : 'January';
      case DateTime.february:
        return isCapitalized ? 'February'.toUpperCase() : 'February';
      case DateTime.march:
        return isCapitalized ? 'March'.toUpperCase() : 'March';
      case DateTime.april:
        return isCapitalized ? 'April'.toUpperCase() : 'April';
      case DateTime.may:
        return isCapitalized ? 'May'.toUpperCase() : 'May';
      case DateTime.june:
        return isCapitalized ? 'June'.toUpperCase() : 'June';
      case DateTime.july:
        return isCapitalized ? 'July'.toUpperCase() : 'July';
      case DateTime.august:
        return isCapitalized ? 'August'.toUpperCase() : 'August';
      case DateTime.september:
        return isCapitalized ? 'September'.toUpperCase() : 'September';
      case DateTime.october:
        return isCapitalized ? 'October'.toUpperCase() : 'October';
      case DateTime.november:
        return isCapitalized ? 'November'.toUpperCase() : 'November';
      case DateTime.december:
        return isCapitalized ? 'December'.toUpperCase() : 'December';
      default:
        return isCapitalized ? 'January'.toUpperCase() : 'January';
    }
  }

  static String nameOfTheWeekDay(int day, {bool isCapitalized = false}) {
    if (day <= 7 || day >= 1) {
      switch(day) {
        case 1:
          return isCapitalized ? 'MONDAY' : 'Monday';
        case 2:
          return isCapitalized ? 'TUESDAY' : 'Tuesday';
        case 3:
          return isCapitalized ? 'WEDNESDAY' : 'Wednesday';
        case 4:
          return isCapitalized ? 'THURSDAY' : 'Thursday';
        case 5:
          return isCapitalized ? 'FRIDAY' : 'Friday';
        case 6:
          return isCapitalized ? 'SATURDAY' : 'Saturday';
        case 7:
          return isCapitalized ? 'SUNDAY' : 'Sunday';
        default:
          return isCapitalized ? 'MONDAY' : 'Monday';
      }
    } else {
      log('Valid number are 1 upto 7');
      return isCapitalized ? 'MONDAY' : 'Monday';
    }
  }

  static String nameOfFirstDayOfMonth({int numOfChars = 0}) {
    final today = DateTime.now();
    final firstDay = DateTime(today.year, today.month, 1);

    if (numOfChars > 0 && numOfChars < 6) {
      return DartDays.nameOfTheWeekDay(firstDay.weekday).substring(
          0, numOfChars);
    } else {
      return DartDays.nameOfTheWeekDay(firstDay.weekday);
    }
  }

  static int weekDayOfFirstDayOfMonth({int numOfChars = 0}) {
    final today = DateTime.now();
    final firstDay = DateTime(today.year, today.month, 1);
    return firstDay.weekday;
  }

  static List<String> daysNameOfWeek({int numOfChars = 0, bool isCapitalized = false}) {
    final weekDays = ['Monday', 'Tuesday', 'Wendsday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    if (numOfChars > 6 || numOfChars == 0) {
      return isCapitalized
          ? weekDays.map((f) => f.toUpperCase()).toList()
          : weekDays;
    }
    return isCapitalized
        ? weekDays.map((f) => f.substring(0, numOfChars).toUpperCase()).toList()
        : weekDays.map((f) => f.substring(0, numOfChars)).toList();
  }
}
