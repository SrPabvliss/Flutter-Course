void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Dito',
    'type': 'Electric',
    'power': 100,
    'isAlive': true,
    'abilities': ['Rayo', 'Trueno', 'Impactrueno'],
    'sprites': {
      1: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
      2: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png'
    }
  };

  print(pokemon['sprites'][2]);
  print(pokemon['sprites'][1]);
}
