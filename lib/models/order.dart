import 'package:shopping_cart/models/cart_Item.dart';

class Order {
  final String orderId;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  Order(
      {required this.orderId,
      required this.amount,
      required this.products,
      required this.dateTime});
}