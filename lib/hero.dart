abstract class Hero {
  final String specialization;
  int _healthPoint = 1000;
  int _attack = 1;
  int _armor = 1;
  double _buff = 1;
  final int intelligence;
  final int agility;
  final int strength;

  Hero(this.intelligence, this.agility, this.strength, this.specialization) {
    _healthPoint = 500 + strength * 10;
    _attack = (agility + strength + intelligence) * 3;
    _armor = ((agility * 0.2 + strength) * 2).toInt();
  }

  get hp {
    return _healthPoint;
  }

  get attack {
    return _attack;
  }

  get armor {
    return _armor;
  }

  int setHP(int hp) {
    _healthPoint = hp;
    if (_healthPoint < 0) _healthPoint = 0;
    return _healthPoint;
  }

  double setBuff(double buff) {
    _buff = buff;
    print(
        'Location bonus damage was set to $_buff for $specialization specialization');
    return _buff;
  }

  get buff {
    return _buff;
  }

  void heroInfo() {
    print(
        'Created hero with $specialization specialization, $strength strength, $agility agility, $intelligence intelligence, $_healthPoint HP, $attack attack, $armor armor');
  }
}
