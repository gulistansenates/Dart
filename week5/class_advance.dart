void main() {
  final user = _User('Güli', age: 22);

  if (user.age is int) {
    if (user.age! < 18) {
      print('Küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(22);
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : ' ';

  print(_newType + 'A');

  int money1 = 42;
  int money2 = 46;

  if (money1 == money2) {
    print('Okey');
  }

  final moneyBank1 = Bank(63, '12');
  final moneyBank2 = Bank(26, '12');

  print(moneyBank1 == moneyBank2);

  print(moneyBank1 + moneyBank2);

  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('Güli');

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'Güli';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('Money');
  }
}
