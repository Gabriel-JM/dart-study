void main() {
  Item item = Item('Item 1');
  Item item2 = Item('Item 2');
  Item item3 = Item('Item 3');

  print(item == item2);
  print(item2 == item3);

  print(item.state);
  print(item2.state);
  print(item3.state);
}

class Item {
  static Item item;
  String state;

  factory Item(String state) {
    if(Item.item == null) {
      Item.item = Item._internal()..state = state;
    }

    return Item.item..state = state;
  }

  Item._internal();
}