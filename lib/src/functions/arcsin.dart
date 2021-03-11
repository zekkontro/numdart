import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';
import 'dart:math' as m;

Array arcsin(List<num> list) {
  isEmptyError(list);
  return Array(List<num>.generate(list.length, (index) => m.asin(list[index])));
}
