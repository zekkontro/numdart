import 'package:numdart/src/array.dart';
import 'package:numdart/src/constants.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array radians(List<double> doubleList) {
  isEmptyError(doubleList);
  var base = List<double>.generate(
      doubleList.length, (index) => doubleList[index] * pi / 180);
  return Array(base);
}
