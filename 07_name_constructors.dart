void main() {
  // final IronMan =
  //     Hero(nombre: 'Tony Stark', power: 'Inteligencia', isAlive: true);

  final Map<String, dynamic> ironManJson = {
    'nombre': 'Tony Stark',
    'power': 'dinero xd',
    'isAlive': false
  };

  final IronMan = Hero.fromJson(ironManJson);
  print(IronMan);
}

class Hero {
  String nombre;
  String power;
  bool isAlive;

  Hero({required this.nombre, required this.power, required this.isAlive});

  // Named constructor: Es un constructor que tiene un nombre en específico. Puede haber varios
  Hero.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'sin nombre',
        power = json['power'] ?? 'sin poder',
        isAlive = json['isAlive'] ?? 'Valor de vida no encontrado';

  @override
  String toString() {
    // TODO: implement toString
    return 'Nombre: $nombre , Power: $power, Está vivo? ${isAlive ? 'yes' : 'nop'}';
  }
}
