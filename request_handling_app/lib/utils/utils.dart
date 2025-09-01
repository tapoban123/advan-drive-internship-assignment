import 'package:intl/intl.dart';

String formatDateTime(DateTime datetime) {
  return DateFormat.yMMMMd().format(datetime);
}
