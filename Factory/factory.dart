void main() {
  Animal c = Animal('Cat');
  print(c is Cat);

  Animal d = Animal('Dog');
  print(d is Dog);

  Animal a = Animal('Rabbit');
  print(a is Animal);
}

class Animal {
  String type;

  factory Animal(String type) {
    switch(type) {
      case 'Cat':
        return Cat(type);
      case 'Dog':
        return Dog(type);
      default:
        return Animal._type(type);
    }
  }

  Animal._type(this.type);
}

class Cat extends Animal {
  Cat(String type) : super._type(type);

  String toString() {
    return type;
  }
}

class Dog extends Animal {
  Dog(String type) : super._type(type);

  String toString() {
    return type;
  }
}