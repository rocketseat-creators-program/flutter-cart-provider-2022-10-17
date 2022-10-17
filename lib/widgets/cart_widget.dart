import 'package:app_cart/controllers/cart_controller.dart';
import 'package:app_cart/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CartPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.shopping_cart,
            size: 30,
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            width: 15,
            height: 15,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: Center(
              child: Text(
                '${cartController.length}',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
