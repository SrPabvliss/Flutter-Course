void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  windPlant.consumeEnergy(20);
  print(windPlant.energyLeft);

  final nuclerPlant = NuclearPlant(energyLeft: 120);

  nuclerPlant.consumeEnergy(30);
  print(nuclerPlant.energyLeft);
}

enum PlantType { nuclear, wind, water }

abstract class energyPlant {
  double energyLeft;
  PlantType type;

  energyPlant({required double this.energyLeft, required PlantType this.type});

  void consumeEnergy(double amount);
}

//extends o implements
// extends: herdamos todo lo que viene de la clase padre, metodos y atributos.
class WindPlant extends energyPlant {
  double initialEnergy;

  WindPlant({required double initialEnergy})
      : this.initialEnergy = initialEnergy,
        super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    // TODO: implement consumeEnergy
    energyLeft -= amount;
  }
}

// con implemnts heredmas cosas esepecíficas de la clase padre
class NuclearPlant implements energyPlant {
  @override
  double energyLeft;

  @override
  PlantType type;

  NuclearPlant({required double this.energyLeft})
      : this.type = PlantType.nuclear;

  @override
  void consumeEnergy(double amount) {
    // TODO: implement consumeEnergy
    energyLeft -= (amount * 0.5);
  }
}
