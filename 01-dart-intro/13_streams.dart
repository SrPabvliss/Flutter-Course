void main() {
  //es necesario escuchar un stream para poder recibir los datos
  emitNumbers().listen((event) {
    print('Desde listen: $event');
  });

  emitNumbers2().listen((event) {
    print('Desde listen2: $event');
  });
}

//Un stream es un flujo de datos, que puede ser asincrono
Stream<int> emitNumbers() {
  //Stream.periodic genera un stream de forma periodica
  return Stream.periodic(const Duration(seconds: 2), (value) {
    //print('Desde periodic: $value');
    return value;
    //take(5) limita el numero de datos que se emiten
  }).take(5);
}

//async* es como el async, pero para streams
Stream<int> emitNumbers2() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 2));
    //yield es como el return, pero no termina la ejecucion del metodo
    yield i;
  }
}
