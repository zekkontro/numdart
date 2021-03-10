import 'package:numdart/src/array.dart';

Array exp(List list) {
  const double e = 2.718281;
  List<double> base = List.generate(list.length, (index) => list[index] * e);

  return Array(base);
}
