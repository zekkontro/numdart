import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:numdart/src/error/is_empty_error.dart';

class Array extends DelegatingList {
  const Array(List base) : super(base);

  Array reshape(List<int> element) {
    isEmptyError(this);
    isEmptyError(element);
    if (element.length != 2) {
      throw "List length must equals to 2";
    } else {
      int element1 = element[0]; // 2
      int element2 = element[1]; // 3

      return Array(List.generate(
          element2,
          (index1) => List.generate(element1, (index2) {
                int index = index1 * element1 + index2; // index1 = 1, index2=0
                return this[index];
              })));
    }
  }

  Uint8List toBytes() {
    return Uint8List.fromList(this.toList());
  }

  File toFile(String path) {
    List list = this.toList();
    File(path).createSync();

    File('$path').writeAsStringSync(list.toString());

    return File(path);
  }

  String toString() {
    return "Array ${this.toList()}";
  }
}
