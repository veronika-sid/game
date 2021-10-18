import 'dart:io';
import 'package:game/battlefield.dart';
import 'battle.dart';
import 'factory.dart';
import 'hero.dart';

void main() {
  print('Choose first hero specialization: Archer, Assassin, Mage, Warrior');
  String? firstHeroSpecialization = stdin.readLineSync();
  print(firstHeroSpecialization);
  Hero firstHero = Factory.heroFactory(firstHeroSpecialization!);
  firstHero.heroInfo();
  print('Choose second hero specialization: Archer, Assassin, Mage, Warrior');
  String? secondHeroSpecialization = stdin.readLineSync();
  print(secondHeroSpecialization);
  Hero secondHero = Factory.heroFactory(secondHeroSpecialization!);
  secondHero.heroInfo();
  print('Choose battlefield: Catacomb, Forest, Meadow, Swamp');
  String? battlefieldType = stdin.readLineSync();
  print(battlefieldType);
  Battlefield battlefield = Factory.battlefieldFactory(battlefieldType!);
  Battle battle = Battle(
      firstHero: firstHero, secondHero: secondHero, battlefield: battlefield);
  battle.battle();
}
