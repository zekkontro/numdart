import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array multiplication(List<double> a, List<double> b) {
  if (a.isEmpty) {
    isEmptyError(a);
  }

  if (b.isEmpty) {
    isEmptyError(b);
  }

  List<double> base = List<double>.generate(
      a.length,
      (index) => index + 1 > a.length
          ? 1
          : a[index] * (index + 1 > b.length ? 1 : b[index]));

  return Array(base);
}
