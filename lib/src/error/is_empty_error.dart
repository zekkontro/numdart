void isEmptyError(dynamic element) {
  if (element.isEmpty) {
    throw "Element must not empty";
  }
}
