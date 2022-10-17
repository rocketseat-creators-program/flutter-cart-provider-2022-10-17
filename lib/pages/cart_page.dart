import 'package:app_cart/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  Widget _buildListItems(CartController cartController) {
    return ListView(
      children: cartController.items
          .map(
            (item) => Card(
              elevation: 15,
              child: ListTile(
                title: Text(item.name),
                leading: Text('R\$ ${item.value.toStringAsFixed(2)}'),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
        centerTitle: true,
      ),
      body: _buildListItems(cartController),
    );
  }
}
