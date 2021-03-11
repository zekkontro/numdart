import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';

Array absolute(List<num> list) {
  isEmptyError(list);
  List<num> base = List<num>.generate(list.length, (index) {
    if (list[index] < 0) {
      int delta = 0 - list[index];
      return delta;
    } else {
      return list[index];
    }
  });
  return Array(base);
}
