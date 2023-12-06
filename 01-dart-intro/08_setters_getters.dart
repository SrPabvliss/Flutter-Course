void main() {
  final cuadrado = Square(side: 4);
  cuadrado._side = 10;
  print(cuadrado.area);
}

class Square {
  double _side;

  //el guion bajo siginifica que el atributo es privado

  Square({required double side})
      : assert(side >= 0, 'number must be >=0'),
        _side = side;

  set side(double value) {
    print('cambiando el valor de size');
    if (value < 0) throw 'Value must be greater than 0';
    _side = value;
  }

  double get area {
    return this._side * this._side;
  }
}
