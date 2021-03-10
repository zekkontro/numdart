import 'package:numdart/src/array.dart';
import 'package:numdart/src/constants.dart';
import 'package:numdart/src/functions/is_empty_error.dart';

Array degrees(List<double> doubleList) {
  isEmptyError(doubleList);
  var base = List<double>.generate(
      doubleList.length, (index) => doubleList[index] * 180 / pi);
  return Array(base);
}
