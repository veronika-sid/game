import 'package:game/battlefield.dart';

class Meadow extends Battlefield {
  Meadow(
      {double damageBuff = 1,
      double archerBuff = 0.5,
      double assassinBuff = 0.8,
      double mageBuff = 1.5,
      double warriorBuff = 2.0})
      : super(damageBuff, archerBuff, assassinBuff, mageBuff, warriorBuff);
}
