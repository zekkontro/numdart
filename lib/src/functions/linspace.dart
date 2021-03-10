import 'package:numdart/src/array.dart';

Array linspace(double start, double stop, int part) {
  double incrementCount = (stop - start) / part;
  List<double> base = List<double>.generate(
      part + 1, (index) => start.toDouble() + index * incrementCount);

  return Array(base);
}
