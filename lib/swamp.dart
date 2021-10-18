import 'package:game/battlefield.dart';

class Swamp extends Battlefield {
  Swamp(
      {double damageBuff = 1,
      double archerBuff = 1.5,
      double assassinBuff = 0.5,
      double mageBuff = 2.0,
      double warriorBuff = 0.8})
      : super(damageBuff, archerBuff, assassinBuff, mageBuff, warriorBuff);
}
