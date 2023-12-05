void main() {
  final wolverine = new Hero('Wolverine', 'Regeneración');
  print(wolverine.nombre);
  print(wolverine.power);
}

class Hero {
  String nombre;
  String power;

  Hero(this.nombre, this.power);

  //Hero(String name, String power)
  //    : this.nombre = name,
  //      this.power = power;
}
