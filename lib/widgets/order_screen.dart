import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/controller/order_controller.dart';
import 'package:shopping_cart/widgets/order_item.dart';

import '../drawer/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  var orderController = Get.put(OrderController());

  OrderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yours Orders"),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
          itemCount: orderController.orders.length,
          itemBuilder: (context, index) =>
              OrderItem(orderController.orders[index])),
    );
  }
}