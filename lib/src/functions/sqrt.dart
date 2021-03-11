import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';
import 'dart:math' as m;

Array sqrtArray(List<double> a, List<double> b) {
  if (a.isEmpty) {
    isEmptyError(a);
  }

  if (b.isEmpty) {
    isEmptyError(b);
  }

  List<double> base = List<double>.generate(
      a.length, (index) => m.sqrt(index + 1 > a.length ? 1 : a[index]));

  return Array(base);
}
