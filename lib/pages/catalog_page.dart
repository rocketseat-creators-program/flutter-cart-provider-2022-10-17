import 'package:app_cart/models/item_model.dart';
import 'package:app_cart/widgets/action_widget.dart';
import 'package:app_cart/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  Widget _buildListItems() {
    return ListView(
      children: listItems
          .map(
            (item) => Card(
              elevation: 15,
              child: ListTile(
                title: Text(item.name),
                trailing: ActionWidget(item: item,),
                leading: Text('R\$ ${item.value.toStringAsFixed(2)}'),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Page'),
        centerTitle: true,
        actions: const [
          CartWidget(),
        ],
      ),
      body: _buildListItems(),
    );
  }
}
