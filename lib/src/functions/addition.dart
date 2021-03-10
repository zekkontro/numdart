import 'package:numdart/src/array.dart';
import 'package:numdart/src/functions/is_empty_error.dart';

Array addition(List<double> a, List<double> b) {
  if (a.isEmpty) {
    isEmptyError(a);
  }

  if (b.isEmpty) {
    isEmptyError(b);
  }

  List<double> base = List<double>.generate(
      a.length,
      (index) => index + 1 > a.length
          ? 0
          : a[index] + (index + 1 > b.length ? 0 : b[index]));

  return Array(base);
}
