import 'package:numdart/src/array.dart';
import 'package:numdart/src/functions/check_positive_status.dart';

Array arange(int start, int stop, int step) {
  checkPositiveStatus(start);
  checkPositiveStatus(stop);
  checkPositiveStatus(step);

  int length = ((stop - start) / step).round();

  List newList = List<int>.generate(length, (index) => start + index * step);
  return Array(newList);
}
