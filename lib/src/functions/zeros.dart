import 'package:numdart/src/array.dart';
import 'package:numdart/src/functions/check_positive_status.dart';

Array zeros(int rowCount, int columnCount) {
  checkPositiveStatus(rowCount);
  checkPositiveStatus(columnCount);
  List base = List.generate(
      rowCount, (index) => List.generate(columnCount, (index) => 0));
  return Array(base);
}
