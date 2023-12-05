void main() {
  print(greetEveryone());
  print(saludito());
  print('Add two numbers : ${addTwoNumbers(2, 4)}');
  print('Add two numbers : ${addArrowed(7, 10)}');
  print('Add two numbers : ${addOptionalNumber(4)}');
  print(greetPerson(nombre: 'Pablo'));
  print(greetPerson(nombre: 'Pablo', message: 'Saludos'));
}

String greetEveryone() {
  return "Hola a todos";
}

String saludito() => 'Hola a todos pero con función flecha';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addArrowed(int a, int b) => a + b;

int addOptionalNumber(int a, [int b = 0]) {
  //haciendo el parametro b opcional
  // b = b ?? 0;
  //b ??= 0;  en caso de no recibir valor, se asigna 0 por defecto
  return a + b;
}

String greetPerson({required String nombre, String message = 'Hola'}) {
  //Al colocar llaves, mis parámetros se vuelven opcionales y por nombre (mirar llamada a la función)
  //la palabra required indica que ese parámetro es obligatorio
  return '$message, $nombre';
}
