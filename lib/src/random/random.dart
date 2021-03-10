import 'dart:math' as m;

import 'package:numdart/src/random/provider_error.dart';
import 'package:numdart/src/random/random_provider.dart';

const maxSupportedInteger = 999999999999999;
const minSupportedInteger = 0;
const asciiStart = 33;
const asciiEnd = 126;
const numericStart = 48;
const numericEnd = 57;
const lowerAlphaStart = 97;
const lowerAlphaEnd = 122;
const upperAlphaStart = 65;
const upperAlphaEnd = 90;

final _internal = m.Random();

class _DefaultRandomProvider with AbstractRandomProvider {
  const _DefaultRandomProvider();

  @override
  double nextDouble() => _internal.nextDouble();
}

/// A generator of random values using a supplied [math.Random].
class _CoreRandomProvider with AbstractRandomProvider {
  m.Random random;

  _CoreRandomProvider.from(this.random);

  @override
  double nextDouble() => random.nextDouble();
}

class Random {
  int randomBetween(int from, int to,
      {AbstractRandomProvider provider = const _DefaultRandomProvider()}) {
    if (from > to) {
      throw ArgumentError('$from cannot be > $to');
    }
    if (from < minSupportedInteger) {
      throw ArgumentError(
          '|$from| is larger than the maximum supported $maxSupportedInteger');
    }

    if (to > maxSupportedInteger) {
      throw ArgumentError(
          '|$to| is larger than the maximum supported $maxSupportedInteger');
    }

    var d = provider.nextDouble();
    if (d < 0 || d >= 1) {
      throw ProviderError(d);
    }
    return _mapValue(d, from, to);
  }

  int _mapValue(double value, int min, int max) {
    if (min == max) return min;
    var range = (max - min).toDouble();
    return (value * (range + 1)).floor() + min;
  }

  /// Generates a random string of [length] with characters
  /// between ascii [from] to [to].
  /// Defaults to characters of ascii '!' to '~'.
  String randstr(int length,
      {int from = asciiStart,
      int to = asciiEnd,
      AbstractRandomProvider provider = const _DefaultRandomProvider()}) {
    return String.fromCharCodes(List.generate(
        length, (index) => randomBetween(from, to, provider: provider)));
  }

  /// Generates a random string of [length] with only numeric characters.
  String randnum(int length,
          {AbstractRandomProvider provider = const _DefaultRandomProvider()}) =>
      randstr(length, from: numericStart, to: numericEnd, provider: provider);

  /// Generates a random string of [length] with only alpha characters.
  String randalpha(int length,
      {AbstractRandomProvider provider = const _DefaultRandomProvider()}) {
    var lowerAlphaWeight = provider.nextDouble();
    var upperAlphaWeight = provider.nextDouble();
    var sumWeight = lowerAlphaWeight + upperAlphaWeight;
    lowerAlphaWeight /= sumWeight;
    upperAlphaWeight /= sumWeight;
    var lowerAlphaLength = randomBetween(0, length, provider: provider);
    var upperAlphaLength = length - lowerAlphaLength;
    var lowerAlpha = randstr(lowerAlphaLength,
        from: lowerAlphaStart, to: lowerAlphaEnd, provider: provider);
    var upperAlpha = randstr(upperAlphaLength,
        from: upperAlphaStart, to: upperAlphaEnd, provider: provider);
    return randmerge(lowerAlpha, upperAlpha);
  }

  /// Generates a random string of [length] with alpha-numeric characters.
  String randalphanum(int length,
      {AbstractRandomProvider provider = const _DefaultRandomProvider()}) {
    var alphaLength = randomBetween(0, length, provider: provider);
    var numericLength = length - alphaLength;
    var alpha = randalpha(alphaLength, provider: provider);
    var numeric = randnum(numericLength, provider: provider);
    return randmerge(alpha, numeric);
  }

  /// Merge [a] with [b] and shuffle.
  String randmerge(String a, String b) {
    var mergedCodeUnits = List.from('$a$b'.codeUnits);
    mergedCodeUnits.shuffle();
    return String.fromCharCodes(mergedCodeUnits.cast<int>());
  }
}
