import 'package:social_app/helpers/constants.dart';
import 'package:intl/intl.dart';

DateTime endOfWeek() {
  DateTime endWeek = today.add(
    Duration(days: DateTime.daysPerWeek - today.weekday),
  );
  return DateTime(endWeek.year, endWeek.month, endWeek.day, 23, 59, 59, 999);
}

String utilsToTime(DateTime date) {
  DateFormat formatter = DateFormat('HH:mm');
  return formatter.format(date);
}
