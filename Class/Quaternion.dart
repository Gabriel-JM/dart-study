void main() {
  print(Quaternion(1, 2, 3));
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

  Complex multiply(Complex c) {
    num first = this.real * c.real;
    num inner = this.imaginary * c.real;
    num outer = this.real * c.imaginary;
    num last = -(this.imaginary) * c.imaginary;

    return Complex(first + last, inner + outer);
  }

  static Complex subtract(Complex c1, Complex c2) {
    return Complex(
      c1.real - c2.real,
      c1.imaginary - c2.imaginary
    );
  }

  // Change the + sign result
  Complex operator +(Complex c) {
    return Complex(
      this.real + c.real,
      this.imaginary + c.imaginary
    );
  }

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

class Quaternion extends Complex {
  num jImage;

  Quaternion(
    num real,
    num imaginary,
    this.jImage
  ) : super(real, imaginary);

  @override
  String toString() {
    if(this.jImage >= 0 && this._imaginary >= 0) {
      return '${this._real} + ${this._imaginary}i + ${this.jImage}j';
    }

    if(this.jImage >= 0 && this._imaginary < 0) {
      return '${this._real} - ${this._imaginary.abs()}i + ${this.jImage}j';
    }

    return '${this._real} - ${this._imaginary.abs()}i - ${this.jImage.abs()}j';
  }
}