import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';
import 'dart:math' as m;

Array arccos(List<num> list) {
  isEmptyError(list);
  return Array(List<num>.generate(list.length, (index) => m.acos(list[index])));
}
