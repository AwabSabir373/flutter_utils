
import 'package:intl/intl.dart';

DateTime stringToDate(String date, {String format = 'yyyy-MM-dd'}) {
  try {
    return DateFormat(format).parse(date);
  } catch (e) {
    return DateTime.now();
  }
}

String convertTime24Formate(String time) {
  String finalTime = '';
  if (time.contains('PM')) {
    finalTime = time.replaceAll('PM', '');
    finalTime = finalTime.trim();
    finalTime = finalTime + ' PM';
  } else {
    finalTime = time.replaceAll('AM', '');
    finalTime = finalTime.trim();
    finalTime = finalTime + ' AM';
  }
  return finalTime;
}
