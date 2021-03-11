import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';
import 'package:numdart/src/functions/sum.dart';

double mean(Array list) {
  isEmptyError(list);
  int listSum = sum(list);

  return listSum / list.length;
}
