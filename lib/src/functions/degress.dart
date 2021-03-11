import 'package:numdart/src/array.dart';
import 'package:numdart/src/constants.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array degrees(List<num> doubleList) {
  isEmptyError(doubleList);
  var base = List<num>.generate(
      doubleList.length, (index) => doubleList[index] * 180 / pi);
  return Array(base);
}
