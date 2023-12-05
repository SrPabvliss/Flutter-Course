void main() {
  final wolverine = new Hero(nombre: 'Logan', power: 'Regeneración');
  print(wolverine.nombre);
  print(wolverine.power);
  print(wolverine.toString());
}

class Hero {
  String nombre;
  String power;

  Hero({required this.nombre, required this.power});

  //Hero(String name, String power)
  //    : this.nombre = name,
  //      this.power = power;\

  // @override indica que se está sobreescribiendo un método
  @override
  String toString() => 'nombre: $nombre - power: $power';
}
