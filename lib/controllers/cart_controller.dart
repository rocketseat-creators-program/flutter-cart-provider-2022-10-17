import 'package:app_cart/models/item_model.dart';
import 'package:flutter/cupertino.dart';

class CartController extends ChangeNotifier{
  final List<ItemModel> _items = [];

  void add(ItemModel item){
    _items.add(item);
    notifyListeners();
  }

  void remove(ItemModel item){
    _items.remove(item);
    notifyListeners();
  }

  int get length => _items.length;

  List<ItemModel> get items => _items;
}