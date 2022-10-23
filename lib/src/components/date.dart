import 'package:intl/intl.dart';

var now = DateTime.now();

class KOR_Date {
  String Year = DateFormat('yy').format(now);
  String Month = DateFormat('MM').format(now);
  String Day = DateFormat('dd').format(now);
}
