import 'package:game/battlefield.dart';

class Catacomb extends Battlefield {
  Catacomb(
      {double damageBuff = 1,
      double archerBuff = 0.8,
      double assassinBuff = 2.0,
      double mageBuff = 0.5,
      double warriorBuff = 1.5})
      : super(damageBuff, archerBuff, assassinBuff, mageBuff, warriorBuff);
}
