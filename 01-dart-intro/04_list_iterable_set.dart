void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 5, 5];

  print(numbers);
  print('Length : ${numbers.length}');
  print('Index 0 : ${numbers[0]}');
  print('Primer elemento : ${numbers.first}');
  print('Último elemento : ${numbers.last}');
  print('Invertido : ${numbers.reversed}'); //devuelve un iterable

  final numbersInvertido = numbers.reversed;
  print('Iterable a lista ${numbersInvertido.toList()}');
  print(
      'Iterable a set ${numbersInvertido.toSet()}'); //listado sin elementos duplicados, [] -> lista, () -> iterable, {} -> set

  final graterThan2 = numbers.where((number) {
    return number > 2;
    //retorna true a false, al final resulta un iterable con aquellos valores que cumplan la condición
  });

  print('Iterable:  $graterThan2');
  print('Set:  ${graterThan2.toSet()}');
}
