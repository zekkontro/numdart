import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array addition(List<num> a, List<num> b) {
  if (a.isEmpty) {
    isEmptyError(a);
  }

  if (b.isEmpty) {
    isEmptyError(b);
  }

  List<num> base = List<num>.generate(
      a.length,
      (index) => index + 1 > a.length
          ? 0
          : a[index] + (index + 1 > b.length ? 0 : b[index]));

  return Array(base);
}
