class ItemModel{
   final String name;
   final double value;

  ItemModel({required this.name, required this.value}); 
}

List<ItemModel> listItems = [
  ItemModel(name: 'Café', value: 1.5),
  ItemModel(name: 'Café com Leite', value: 2.5),
  ItemModel(name: 'Esfirra', value: 3),
  ItemModel(name: 'Lanche Natural', value: 5),
];