void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    // ignore: deprecated_member_use_from_same_package
    print(user.money);
    return result + 5;
  });
}

typedef CalculateCallBack = int Function(int data);

class User {
  @deprecated
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    // ignore: deprecated_member_use_from_same_package
    money += 5;
  }

  @Todo('Seth', 'Make This Do Something')
  void a() {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
