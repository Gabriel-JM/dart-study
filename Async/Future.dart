import 'dart:async';

void main() async {
  print('program start');
  scheduleMicrotask(
    () => print('This is a microtask')
  );
  print(await future());
  print(await event1());
  print(await event2());
  print('program end');
}

Future future() async {
  Completer completer = Completer();

  Future.delayed(Duration(seconds: 2), () {
    completer.complete('delayed call');
  });

  return completer.future;
}

Future<String> event1() async {
  return Future.value('This is a future event');
}

Future<String> event2() async {
  return Future.value('This is another future event');
}