import 'package:game/battlefield.dart';

import 'hero.dart';

class Battle {
  Hero firstHero;
  Hero secondHero;
  int _firstHeroDamage = 0;
  int _secondHeroDamage = 0;
  Battlefield battlefield;

  Battle(
      {required this.firstHero,
      required this.secondHero,
      required this.battlefield});

  void battle() {
    firstHero.setBuff(battlefield.heroDamageBuff(firstHero.specialization));
    secondHero.setBuff(battlefield.heroDamageBuff(secondHero.specialization));
    while (firstHero.hp > 0 && secondHero.hp > 0) {
      _firstHeroDamage = heroDamage(firstHero, secondHero);
      showDamageInfo(_firstHeroDamage, firstHero);
      _secondHeroDamage = heroDamage(secondHero, firstHero);
      showDamageInfo(_secondHeroDamage, secondHero);
      firstHero.setHP(firstHero.hp - _secondHeroDamage);
      showHealthInfo(firstHero);
      secondHero.setHP(secondHero.hp - _firstHeroDamage);
      showHealthInfo(secondHero);
    }
    chooseWinner();
  }

  int heroDamage(Hero attackingHero, Hero defendingHero) {
    double damageDone =
        attackingHero.attack * attackingHero.buff - defendingHero.armor;
    damageDone < 0 ? damageDone = 1 : damageDone = damageDone;
    return damageDone.toInt();
  }

  void showDamageInfo(int damage, Hero hero) {
    print(hero.specialization + ' hero caused $damage damage');
  }

  void showHealthInfo(Hero hero) {
    print(hero.specialization + ' hero HP reduced to ' + hero.hp.toString());
  }

  void chooseWinner() {
    if (firstHero.hp == 0 && secondHero.hp > 0) {
      print(secondHero.specialization + ' won!!!');
    } else if (firstHero.hp > 0 && secondHero.hp == 0) {
      print(firstHero.specialization + ' won!!!');
    } else if (firstHero.hp == 0 && secondHero.hp == 0) {
      print('It was great battle!!! No sides!');
    }
  }
}
