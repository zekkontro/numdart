import 'package:numdart/src/array.dart';

Array linspace(double start, double stop, int delta) {
  double incrementCount = (stop - start) / delta;
  List<double> base = List<double>.generate(
      delta + 1, (index) => start.toDouble() + index * incrementCount);

  return Array(base);
}
