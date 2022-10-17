// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_cart/controllers/cart_controller.dart';
import 'package:flutter/material.dart';

import 'package:app_cart/models/item_model.dart';
import 'package:provider/provider.dart';

class ActionWidget extends StatefulWidget {
  final ItemModel item;

  const ActionWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ActionWidget> createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context, listen: false);
    return IconButton(
      onPressed: () {
        setState(() {
          selected = !selected;
          if (selected){
            cartController.add(widget.item);
          }else{
            cartController.remove(widget.item);
          }
        });
      },
      icon: Icon(selected ? Icons.done : Icons.add),
    );
  }
}
