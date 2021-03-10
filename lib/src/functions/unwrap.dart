import 'package:numdart/src/array.dart';
import 'package:numdart/src/constants.dart';

Array unwrap(List<double> p, {double discount = pi}) {
  List base = List.generate(p.length, (index) {
    if (p[index] > discount) {
      return p[index] - (discount * 2);
    } else {
      return p[index];
    }
  });
  return Array(base);
}
