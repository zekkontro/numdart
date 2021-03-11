void checkPositiveStatus(int data) {
  if (data < 0) {
    throw "Number of samples, %s, must be non-negative.";
  }
}
