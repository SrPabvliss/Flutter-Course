void main() {
// declarar las variables como final
  final String myName = 'Pablo';
  final int myAge = 20;
  final bool? myBool = true;
  // la interrogacion es para que acepte null
  final List<String> habilidades = ['Dart', 'Flutter', 'Android'];
  // dynamic es para que acepte cualquier tipo de dato incluso pueden ser funciones, por defecto es nulo
  dynamic errorMessage = 'Error en la conexion';
  errorMessage = 404;
  errorMessage = ['Error', 'Error', 'Error'];
  errorMessage = () => 'Error';
  errorMessage = {1, 3, 2};

  print("""
    $myName
    $myAge
    $myBool
    $habilidades
    $errorMessage
    """);
}
