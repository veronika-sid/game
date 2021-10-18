class Battlefield {
  final double damageBuff;
  final double archerBuff;
  final double assassinBuff;
  final double mageBuff;
  final double warriorBuff;

  Battlefield(this.damageBuff, this.archerBuff, this.assassinBuff,
      this.mageBuff, this.warriorBuff);

  double heroDamageBuff(String specialization) {
    switch (specialization) {
      case 'Archer':
        return damageBuff * archerBuff;
      case 'Assassin':
        return damageBuff * assassinBuff;
      case 'Mage':
        return damageBuff * mageBuff;
      case 'Warrior':
        return damageBuff * warriorBuff;
    }
    return damageBuff;
  }
}
