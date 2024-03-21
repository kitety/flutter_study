// 格式化用于展示的价格
import 'package:intl/intl.dart';

// String _originalPrice =
//     formatPrice(_subscription.currency, _subscription.price);

String formatPrice(String? currency, double? price) {
  var format = NumberFormat.simpleCurrency(name: currency);
  return format.format(price);
}
