import 'package:numdart/src/array.dart';

Array ones(int rowCount, int columnCount) {
  List base = List.generate(
      rowCount, (index) => List.generate(columnCount, (index) => 1));
  return Array(base);
}
