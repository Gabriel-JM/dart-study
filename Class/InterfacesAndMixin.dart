main() {
  A c = C('C');

  c.hello();
  (c as B).hi();
  (c as C).goodbye();
  (c as C).printStamp();
}

class TimeStamp {
  DateTime time = DateTime.now();

  void printStamp() {
    print(time);
  }
}

abstract class A {
  void hello() {
    print('Hello from A');
  }
}

class B {
  String b;

  B(this.b);

  void hi() {
    print('Hi from B');
  }

  void goodbye() {
    print('Bye bye $b');
  }
}

class C with TimeStamp implements A, B {
  @override
  String b;

  C(this.b);

  @override
  void hi() {
    print('Hi from C');
  }

  @override
  hello() {
    print('Hello from C');
  }

  @override
  goodbye() {
    print('Bye bye $b');
  }

}