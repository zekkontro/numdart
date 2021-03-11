import 'package:numdart/src/array.dart';
import 'package:numdart/src/error/is_empty_error.dart';

int sum(List list) {
  isEmptyError(list);
  int numb = 0;

  for (int i = 0; i < list.length; i++) {
    numb += list[i];
  }
  return numb;
}
