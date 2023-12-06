void main() async {
  print('Inicio del programa');

  //await indica que la ejecución del programa debe esperar a que se resuelva el Future

  try {
    final value = await httpGet('https://example.com/api');
    print('Éxito: $value');
    //on indica que se ejecutará el código si se produce una excepción de un tipo determinado
  } on Exception catch (exception) {
    print('Tenemos una excepción: $exception');
    //catch indica que se ejecutará el código si se produce un error no controlado
  } catch (error) {
    print('Algo salió mal $error');
  } finally {
    print('Esto se ejecuta siempre');
  }

  print('Fin del programa');
}

//Async y await son palabras reservadas que nos permiten trabajar con código asíncrono de una manera más sencilla
//async indica que la función es asíncrona, nos obliga a retornar un Future y nos permite usar await
Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw 'Error en la petición http';
  // return 'Tenemos un valor http';
}
