import 'hero.dart';

class Mage extends Hero {
  Mage({
    required int intelligence,
    required int agility,
    required int strength,
    final String specialization = 'Mage',
  }) : super(intelligence, agility, strength, specialization);
}
