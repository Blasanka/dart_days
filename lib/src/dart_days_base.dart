class DartDays {

  String timesAgo(DateTime d) {
    // ignore: omit_local_variable_types
    Duration dif = DateTime.now().difference(d);
    if (dif.inDays > 365) {
      // ignore: omit_local_variable_types
      int years = (dif.inDays / 365).floor();
      // ignore: omit_local_variable_types
      String prefix = ((dif.inDays / 365).floor() == 1) ? 'year' : 'years';
      return '$years $prefix ago';
    } else if (dif.inDays > 30) {
      return "${(dif.inDays / 30).floor()} ${(dif.inDays / 30).floor() == 1 ? 'month' : 'months'} ago";
    } else if (dif.inDays > 7) {
      return "${(dif.inDays / 7).floor()} ${(dif.inDays / 7).floor() == 1 ? 'week' : 'weeks'} ago";
    } else if (dif.inDays > 0) {
      return "${dif.inDays} ${dif.inDays == 1 ? 'day' : 'days'} ago";
    } else if (dif.inHours > 0) {
      return "${dif.inHours} ${dif.inHours == 1 ? 'hour' : 'hours'} ago";
    } else if (dif.inMinutes > 0) {
      return "${dif.inMinutes} ${dif.inMinutes == 1 ? 'minute' : 'minutes'} ago";
    } else {
      return 'just now';
    }
  }
}
