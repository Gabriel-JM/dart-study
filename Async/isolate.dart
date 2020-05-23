import 'dart:isolate';

void main() {
  ReceivePort rPort = ReceivePort();
  rPort.listen((data) {
    if(data is String) {
      print(data);
    } else {
      print('Pi is $data');
      rPort.close();
    }
  });
  
  Isolate.spawn(calculatePI, rPort.sendPort);
}

void calculatePI(SendPort sPort) {
  final int iters = 1000000000;
  double s = 1.0, den = 3.0, neg = -1.0;

  for(int i=0; i<iters; i++) {
    s += (neg * (1/den));
    den += 2.0;
    neg *= -1.0;
    if(i/iters == 0.25 || i/iters == 0.5 || i/iters == 0.75) {
      sPort.send('${(i/iters*100)}% Complete');
    }
  }

  double pi = 4 * s;

  sPort.send(pi);
}