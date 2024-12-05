class Model {
  final String name;
  final String image;
  final String description;
  final double speed, health, attack;

  Model({
    required this.name,
    required this.image,
    required this.description,
    required this.speed,
    required this.health,
    required this.attack,
  });
}

final List<Model> heroes = [
  Model(
    name: 'Raiden',
    image: 'assets/images/Raiden1.png',
    description: 'Raiden es un personaje de la saga de videojuegos de lucha Mortal Kombat. Teniendo su iconica frase: "Hay destinos peores que la muerte"',
    speed: 92.0,
    health: 80.0,
    attack: 100.0,
  ),
  Model(
    name:'Scorpion',
    image: 'assets/images/Scorpion1.png',
    description: 'Scorpion es uno de los personajes originales de la serie y uno de los más populares junto con Sub-Zero entre los fans. Teniendo este tambien su iconica frase: "Los nuevos Shirai Ryu son dignos. Su corazón, no su sangre, es lo que los hace guerreros"',
    speed: 90.0,
    health: 100.0,
    attack: 95.0,
  ),
  Model(
    name: 'Subzero',
    image: 'assets/images/Subzero1.png',
    description: 'Sub-Zero (cuyo verdadero nombre es Kuai Liang) es un ninja vestido de color azul y enmascarado. Este iconico personaje tambien cuenta con una frase en especial: "Máquina u hombre, tienes el alma de un guerrero. Mientras sea Gran Maestro, los Lin Kuei te abrirán las puertas."',
    speed: 80.0,
    health: 100.0,
    attack: 90.0,
  ),
];




