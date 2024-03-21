import 'dart:ui';

String fixedNumber(double val) => val.toStringAsFixed(2);

String formatDistance(double distance) {
  if (isMetric()) {
    return '${fixedNumber(distance)} km';
  } else {
    const magnification = 1.609344;
    final result = distance * magnification;
    return '${fixedNumber(result)} mil';
  }
}

bool isMetric() {
  final Locale locale = window.locales.first;
  // 美国、缅甸和利比里亚 利比里亚太小众就不判断
  // return false;
  return locale != const Locale('en', 'US') && locale != const Locale('my');
}
