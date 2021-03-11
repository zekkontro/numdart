import 'dart:math' as m;

import 'package:numdart/src/array.dart';

Array arround(List<num> list, {int decimal = 0}) {
  num number = m.pow(10, decimal);
  List base = List<num>.generate(list.length, (index) {
    double newNum = list[index] / number;
    double returningValue = newNum.round().toDouble();
    return returningValue * number;
  });
  return Array(base);
}
