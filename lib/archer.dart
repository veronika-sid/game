import 'hero.dart';

class Archer extends Hero {
  Archer({
    required int intelligence,
    required int agility,
    required int strength,
    final String specialization = 'Archer',
  }) : super(intelligence, agility, strength, specialization);
}
