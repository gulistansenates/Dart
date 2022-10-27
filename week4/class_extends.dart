void main() {
  final userNormal = User('Güli', 552);
  final usersBank = BankUser('Deniz', 321, 0101);
  final usrSpecial = SpecialUser('Burak', 388, 123, 456);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  usrSpecial.sayMoneyWithCompanyName();

  print(usrSpecial.calculateMoney);
  print(usrSpecial.money);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Deniz- $money Paranız Vardır');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCost;

  BankUser(String name, int money, this.bankingCost) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final int bankingCost;
  late final int _discount;

  SpecialUser(String name, int money, this.bankingCost, int discount)
      : super(name, money) {
    _discount = discount;
  }

  void bankSpecialLogic() {
    print(money);
  }

  int get calculateMoney => money - (money ~/ _discount);
}
