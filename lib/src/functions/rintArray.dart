import 'package:numdart/src/array.dart';
import 'package:numdart/src/functions/rint.dart';

Array rintArray(List<double> list) {
  List<int> base =
      List<int>.generate(list.length, (index) => rint(list[index]));
  return Array(base);
}
