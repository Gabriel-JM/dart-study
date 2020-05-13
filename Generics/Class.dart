void main() {
  PrintItems<String> string = PrintItems(5, 'Hi');
  string.printItem();

  PrintItems<double> d = PrintItems(3, 10.9);
  d.printItem();

  PrintItems<PrintItems> recur = PrintItems(3, string);
  recur.printItem();

  PrintItems2<int> i = PrintItems2(4, 10);
  i.printItem();
}

class PrintItems<T> {
  int times;
  T printedItem;

  PrintItems(this.times, this.printedItem);

  void printItem() {
    for(int i=0; i<times; i++) {
      print(printedItem);
    }
  }
}

class PrintItems2<T extends num> {
  int times;
  T printedItem;

  PrintItems2(this.times, this.printedItem);

  void printItem() {
    for(int i=0; i<times; i++) {
      print(printedItem);
    }
  }
}