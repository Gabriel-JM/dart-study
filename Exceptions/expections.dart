import 'dart:io';

void main() {
  int index;
  List<String> names = [
    'John',
    'Jackie',
    'Jerry',
    'Sarah'
  ];

  String input;

  print('Enter an Integer:');
  input = stdin.readLineSync();

  // Normal try/catch
  /*try {
    index = int.parse(input);
    print(names[index]);
  } catch(error) {
    print(error);
  }*/

  try {
    index = int.parse(input);
    print(names[index]);
  } on FormatException {
    print('Could not parse the input!');
  } on RangeError {
    print('Integer out of range of index!');
  } finally {
    print('You selected $index out of ${names.length}');
  }

  Pub pub = Pub();

  try {
    pub.checkAge(Person(name: 'Jimmy', age: 15));
    pub.checkAge(Person(name: 'Gabriel', age: 20));
  } catch(err) {
    print(err);
  }
}

class Person {
  String name;
  int age;

  Person({ this.name, this.age });
}

class Pub {
  List<Person> drinking = List();

  void checkAge(Person p) {
    if(p.age < 18) {
      throw TooYoungException(p);
    } else {
      drinking.add(p);
    }
  }
}

class TooYoungException implements Exception {
  Person person;

  TooYoungException(this.person);

  @override
  String toString() {
    return "${person.name} has ${person.age} years old and is too young for the pub!";
  }
}