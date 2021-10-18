import 'package:game/archer.dart';
import 'package:game/assassin.dart';
import 'package:game/battlefield.dart';
import 'package:game/catacomb.dart';
import 'package:game/forest.dart';
import 'package:game/mage.dart';
import 'package:game/meadow.dart';
import 'package:game/swamp.dart';
import 'package:game/warrior.dart';

import 'hero.dart';

class Factory {
  static Hero heroFactory(String specialization) {
    switch (specialization) {
      case 'Archer':
        return Archer(intelligence: 5, agility: 30, strength: 12);
      case 'Assassin':
        return Assassin(intelligence: 5, agility: 30, strength: 18);
      case 'Mage':
        return Mage(intelligence: 40, agility: 5, strength: 10);
      case 'Warrior':
        return Warrior(intelligence: 2, agility: 10, strength: 25);
      default:
        throw ArgumentError('Specialization doesn`t exist');
    }
  }

  static Battlefield battlefieldFactory(String type) {
    switch (type) {
      case 'Catacomb':
        return Catacomb();
      case 'Forest':
        return Forest();
      case 'Meadow':
        return Meadow();
      case 'Swamp':
        return Swamp();
      default:
        throw ArgumentError('Battlefield doesn`t exist');
    }
  }
}
