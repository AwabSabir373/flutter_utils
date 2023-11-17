
import 'package:flutter_utilsx/custom_utils/custom_utils.dart';
import 'package:intl/intl.dart';

DateTime stringToDate(String date, {String format = 'yyyy-MM-dd'}) {
  try {
    return DateFormat(format).parse(date);
  } catch (e) {
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

({String year, String month, String day}) getDateByName(DateTime date){
  String monthName = DateFormat('MMMM').format(date);
  String day = DateFormat('d').format(date);
  String year = DateFormat('y').format(date);
  var res= (year: year, month: monthName, day: day);
  return res;
}
({String year, String month, String day}) stringToDateByName(String date, {String format = 'yyyy-MM-dd'}) {
   var dateTime = stringToDate(date,format: format);
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


