import 'hero.dart';

class Warrior extends Hero {
  Warrior({
    required int intelligence,
    required int agility,
    required int strength,
    final String specialization = 'Warrior',
  }) : super(intelligence, agility, strength, specialization);
}
