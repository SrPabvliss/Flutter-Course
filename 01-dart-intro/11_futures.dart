void main() {
  print('Inicio del programa');
  httpGet('https://example.com/api')
      .then((value) => print(value))
      .catchError((error) => print(error));
  print('Fin del programa');
}

//Future es un tipo de dato que representa un valor que estará disponible en el futuro
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error en la petición http';
    //return 'respuesta de la petición http';
  });
}
