import 'dart:ui';

bool isMetric() {
  final Locale locale = window.locales.first;
  // 美国、缅甸和利比里亚 利比里亚太小众就不判断
  return locale != const Locale('en', 'US') && locale != const Locale('my');
}
