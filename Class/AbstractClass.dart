import 'dart:math';
main() {
  Square square = Square(10);
  Rectangle rectangle = Rectangle(20, 15.0);
  Circle circle = Circle(2.0);

  print(square.name);
  print(rectangle.name);
  print(circle.name);
}

abstract class Shape {
  double get perimeter;
  double get area;
  String get name;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double get perimeter => radius * 2 * pi;

  @override
  double get area => pi * (radius * radius);

  @override
  String get name => "I'm a Circle with raidus $radius";

}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double get perimeter => length * 2 + width * 2;

  @override
  double get area => length * width;

  @override
  String get name => "I'm a Rectangle with length: $length and width: $width";

}

class Square extends Rectangle {
  Square(double side) : super(side, side);

  @override
  String get name => "I'm a Square with side of $length";
}