import 'package:game/battlefield.dart';

class Forest extends Battlefield {
  Forest(
      {double damageBuff = 1,
      double archerBuff = 2.0,
      double assassinBuff = 1.5,
      double mageBuff = 0.8,
      double warriorBuff = 0.5})
      : super(damageBuff, archerBuff, assassinBuff, mageBuff, warriorBuff);
}
