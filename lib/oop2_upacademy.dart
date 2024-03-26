//!task 1
abstract class Storage {
  void save() {
    print("save Storage");
  }

  void retrieve() {
    print("retrieve Storage");
  }
}

//? /////////////////////////////////////////////
class LocalStorage extends Storage {
  @override
  void save() {
    print("save LocalStorage");
  }

  @override
  void retrieve() {
    print("retrieve LocalStorage");
  }
}

//? /////////////////////////////////////////////
class CloudStorage extends Storage {
  @override
  void save() {
    print("save CloudStorage");
  }

  @override
  void retrieve() {
    print("retrieve CloudStorage");
  }
}

//! task 2
class Rectangle {
  double? _width;
  double? _height;

  double get width => _width!;

  double get height => _height!;

  set width(double width) {
    if (width > 0) {
      _width = width;
    }
  }

  set height(double height) {
    if (height > 0) {
      _height = height;
    }
  }

  double get area => _height! * _width!;
}

//!task 3
class Account {
  double? _balance;
  int? _accNumber;

  double? getBalance() {
    return _balance;
  }

  int? getAccNumber() {
    return _accNumber;
  }

  //? /////////////////////////////////////////////
  void deposit(double amount, int accNumber) {
    if (accNumber == _accNumber) {
      if (amount > 0) {
        _balance = (_balance! + amount);
      } else {
        print("enter positive amount");
      }
    } else {
      print("this account number does not exist");
    }
  }

  //? /////////////////////////////////////////////
  void withdraw(double amount, int accNumber) {
    if (accNumber == _accNumber) {
      if (_balance! >= amount && amount > 0) {
        _balance = (_balance! - amount);
        print("done successfuly and your balance now is $_balance");
      } else {
        print("ent ka7ian ya mohamed");
      }
    } else {
      print("this account number does not exist");
    }
  }
}

//! task 4
abstract class Shape {
  double calculateArea() {
    return 1;
  }

  double calculatePerimeter() {
    return 1;
  }
}

//? /////////////////////////////////////////////
class Circle extends Shape {
  final double? _r;

  Circle(this._r);

  @override
  double calculateArea() {
    return 3.14 * _r! * _r;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * _r!;
  }
}

//? /////////////////////////////////////////////
class Rectangles extends Shape {
  final double? _width, _height;

  Rectangles(this._width, this._height);

  @override
  double calculateArea() {
    return _width! * _height!;
  }

  @override
  double calculatePerimeter() {
    return 2 * _height! * _width!;
  }
}

//? /////////////////////////////////////////////
class Triangle extends Shape {
  //*نعتبر انه متساوى الاضلاع
  final double? _base, _height;

  Triangle(this._base, this._height);

  @override
  double calculateArea() {
    return 0.5 * _base! * _height!;
  }

  @override
  double calculatePerimeter() {
    return 3 * _base!;
  }
}

//? /////////////////////////////////////////////
void printShapeInfo(Shape shape) {
  if (shape is Circle) {
    print(shape.calculateArea());
    print(shape.calculatePerimeter());
  } else if (shape is Rectangles) {
    print(shape.calculateArea());
    print(shape.calculatePerimeter());
  } else if (shape is Triangle) {
    print(shape.calculateArea());
    print(shape.calculatePerimeter());
  }
}

void main() {
  //!TASK 1
  LocalStorage str = LocalStorage();
  str.save();
  str.retrieve();

  CloudStorage str2 = CloudStorage();
  str2.save();
  str2.retrieve();

//!TASK 2
  Rectangle rect = Rectangle();
  rect._height = 20;
  rect._width = 10;
  print(rect.area);

//!TASK 3
  Account acc = Account();
  acc._balance = 1000;
  acc._accNumber = 155;
  acc.deposit(500, 155);
  print(acc._balance);
  acc.withdraw(3000, 155);

//!TASK 4
  Shape shape = Circle(4);
  print(shape.calculateArea());
  printShapeInfo(shape);
}
