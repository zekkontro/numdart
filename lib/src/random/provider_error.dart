class ProviderError implements Exception {
  final double value;

  ProviderError(this.value);

  @override
  String toString() => 'nextDouble() = $value, only [0, 1) expected';
}
