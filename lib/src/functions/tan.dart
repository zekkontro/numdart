import 'dart:math' as m;

import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array tan(List<num> list) {
  isEmptyError(list);
  return Array(List<num>.generate(list.length, (index) => m.tan(list[index])));
}
