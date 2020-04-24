void main() {
  Complex c = Complex(5, 2);
  Complex r = Complex.real(10);
  Complex i = Complex.imaginary(8);

  print(c);
  print(r);
  print(i);

  // with cascade operator 
  /*var c2 = Complex()
    ..real = 7
    ..imaginary = 10;*/

  var c2 = Complex(7, 10);

  print("Complex1 is equal to Complex2: ${c == c2}");

  Complex c3 = Complex(7, 10);

  print("Complex2 is equal to Complex3: ${c2 == c3}");
}

class Complex {
  // underscore to make the attribute private
  num _real;
  num _imaginary;

  // Common constructor way
  /*Complex(num real, num imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }*/

  // Constructor Syntax sugar
  Complex(this._real, this._imaginary);

  // Named constructors
  // With initializer operator
  Complex.real(num real) : this(real, 0);
  Complex.imaginary(num imaginary) : this(0, imaginary);

  // Getters and Setters
  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  // Change the == sign result
  bool operator ==(other) {
    if(!(other is Complex)) {
      return false;
    }

    bool equalReal = this.real == other.real;
    bool equalImaginary = this._imaginary == other.imaginary;

    return equalReal && equalImaginary;
  }

  // Object default toString() method
  @override
  String toString() {
    return "Real: $real | Imaginary: $_imaginary";
  }
}