void main() {
  PrintItems<int> printItemsInt = PrintItems(2, 10, Status.running);
  printItemsInt.prints();

  PrintItems<String> printItemsString = PrintItems(3, 'Hi', Status.stopped);
  printItemsString.prints();
}

enum Status {
  stopped,
  running
}

class PrintItems<T> {
  int times;
  T printedItem;
  Status status;

  PrintItems(this.times, this.printedItem, this.status);

  void prints() {
    if(status.index == 1) {
      for(int i=0; i<times; i++) {
        print(printedItem);
      }
    } else {
      print('Item stopped: $status ${status.index}');
    }
  }
}