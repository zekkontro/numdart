import 'package:collection/collection.dart';
import 'package:numdart/src/functions/is_empty_error.dart';

class Array extends DelegatingList {
  Array(List base) : super(base);

  Array reshape2(List<int> element) {
    isEmptyError(this);
    isEmptyError(element);
    if (element.length != 2) {
      throw "List length must equals to 2";
    } else {
      int element1 = element[0];
      int element2 = element[1];

      return Array(List.generate(
          element1,
          (index) =>
              List.generate(element2, (index) => this[element1 * element2])));
    }
  }
}
