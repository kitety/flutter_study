import 'package:intl/intl.dart';

// 格式化用于展示的价格
String formatPrice(double price) {
  const double rate = 0.92; // 1美元时0.92欧元
  final tmpRate = isEUR() ? 1 : rate;
  final result = price * tmpRate;
  var format = NumberFormat.simpleCurrency(name: getCurrencySymbol());
  return format.format(result);
}

String getCurrencySymbol() {
  return isEUR() ? 'EUR' : 'USD';
}

bool isEUR() {
  String locale = Intl.defaultLocale ?? 'en';
  return locale == 'de';
}
