
import 'package:flutter_utilsx/custom_utils/custom_utils.dart';
import 'package:intl/intl.dart';

/// Converts a string representation of a date to a `DateTime` object.
///
/// This function attempts to parse a given date string into a `DateTime` object
/// using the specified format. If the parsing fails, it logs an error message
/// and returns the current date and time.
///
/// \[date\] - The date string to be converted.
/// \[format\] - The format of the date string. Defaults to 'yyyy-MM-dd'.
///
/// Returns a `DateTime` object representing the parsed date, or the current date and time if parsing fails.
///
/// Example:
/// ```dart
/// DateTime date = stringToDate('2023-10-05');
/// print(date); // Output: 2023-10-05 00:00:00.000
/// ```
DateTime stringToDate(String date, {String format = 'yyyy-MM-dd'}) {
  try {
    return DateFormat(format).parse(date);
  } catch (e) {
    logMessage("Error in stringToDate: $e");
    return DateTime.now();
  }
}

List<int> convertTimeTo24Hour(String time) {
  List<int> timeList = [];
  if (time.contains('AM')) {
    time = time.replaceAll('AM', '');
    timeList = time.split(':').map((e) => int.parse(e)).toList();
  } else {
    time = time.replaceAll('PM', '');
    timeList = time.split(':').map((e) => int.parse(e)).toList();
    timeList[0] = timeList[0] + 12;
  }
  return timeList;
}



String convert24To12(String time) {
  if(isNotEmpty(time)){
    final arr = time.split(':');
    final h = int.tryParse(arr[0])??1;
    return '${h > 12 ? h % 12 : h}:${arr[1]} ${h >= 12 ? 'PM' : 'AM'}';
  }
 return "";
}

/// Extracts the year, month, and day from a `DateTime` object and returns them as a named tuple.
///
/// This function formats the given `DateTime` object into a human-readable string for the year, month, and day.
/// The month is returned as its full name (e.g., January, February), the day as a numeric value, and the year as a numeric value.
///
/// \[date\] - The `DateTime` object to be converted.
///
/// Returns a named tuple containing the year, month, and day as strings.
///
/// Example:
/// ```dart
/// var dateInfo = getDateByName(DateTime(2023, 10, 5));
/// print(dateInfo); // Output: (year: 2023, month: October, day: 5)
/// ```
({String year, String month, String day}) getDateByName(DateTime date){
  String monthName = DateFormat('MMMM').format(date);
  String day = DateFormat('d').format(date);
  String year = DateFormat('y').format(date);
  var res= (year: year, month: monthName, day: day);
  return res;
}


/// Converts a string representation of a date to a named tuple containing the year, month, and day.
///
/// This function first converts the given date string into a `DateTime` object using the specified format.
/// It then extracts the year, month, and day from the `DateTime` object and returns them as a named tuple.
/// The month is returned as its full name (e.g., January, February), the day as a numeric value, and the year as a numeric value.
///
/// \[date\] - The date string to be converted.
/// \[format\] - The format of the date string. Defaults to 'yyyy-MM-dd'.
///
/// Returns a named tuple containing the year, month, and day as strings.
///
/// Example:
/// ```dart
/// var dateInfo = stringToDateByName('2023-10-05');
/// print(dateInfo); // Output: (year: 2023, month: October, day: 5)
/// ```
({String year, String month, String day}) stringToDateByName(String date, {String format = 'yyyy-MM-dd'}) {
  var dateTime = stringToDate(date, format: format);
  return getDateByName(dateTime);
}

String calculateTimeDelayInMinutes({required DateTime start, required DateTime end}) {
  String timeDelay = "";
  int difference = end.difference(start).inMinutes;
  if (difference < 60) {
    timeDelay = "$difference min";
  } else if (difference >= 60 && difference < 1440) {
    timeDelay = "${difference ~/ 60} hours";
  } else if (difference >= 1440 && difference < 10080) {
    timeDelay = "${difference ~/ 1440} days";
  } else if (difference >= 10080 && difference < 43800) {
    timeDelay = "${difference ~/ 10080} weeks";
  } else if (difference >= 43800 && difference < 525600) {
    timeDelay = "${difference ~/ 43800} months";
  } else if (difference >= 525600) {
    timeDelay = "${difference ~/ 525600} years";
  } else if (difference < 0 || difference == 0) {
    timeDelay = "now";
  }
  return timeDelay;
}


DateTime convertToDateTime(String time) {
  final arr = time.split(':');
  final h = int.tryParse(arr[0])??1;
  final m = int.tryParse(arr[1])??1;
 return DateTime.now().add(Duration(hours: h, minutes: m));
}



/// Calculates the number of days between two `DateTime` objects.
///
/// This function computes the difference in days between the provided start and end dates.
/// It returns the number of full days between the two dates.
///
/// \[startDate\] - The start date as a `DateTime` object.
/// \[endDate\] - The end date as a `DateTime` object.
///
/// Returns the number of days between the start and end dates as an integer.
///
/// Example:
/// ```dart
/// int days = calculateDaysBetweenTwoDates(DateTime(2023, 10, 1), DateTime(2023, 10, 5));
/// print(days); // Output: 4
/// ```
int calculateDaysBetweenTwoDates(DateTime startDate, DateTime endDate) {
  return endDate.difference(startDate).inDays;
}


//Get the current date
final currentDate=DateTime.now();



