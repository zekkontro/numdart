abstract class AbstractRandomProvider {
  /// A non-negative random floating point value is expected
  /// in the range from 0.0, inclusive, to 1.0, exclusive.
  /// A [ProviderError] is thrown if the return value is < 0 or >= 1
  double nextDouble();
}
