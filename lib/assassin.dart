import 'hero.dart';

class Assassin extends Hero {
  Assassin({
    required int intelligence,
    required int agility,
    required int strength,
    final String specialization = 'Assassin',
  }) : super(intelligence, agility, strength, specialization);
}
