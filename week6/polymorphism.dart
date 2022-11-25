void main(List<String> args) {
  IUser user = Turk();

  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'Burki';

  @override
  void sayName() {
    print('Hosgeldiniz $name');
    print('Aç mısınız?');
  }
}

class English implements IUser {
  @override
  String get name => 'Güli';

  @override
  void sayName() {
    print('Evine hoşgeldin $name');
    print('Toplanalım hadi');
  }
}

class German {
  String get name => 'Deniz';

  void sayName() {
    print('Hosgeldiniz $name');
    print('Aç mısınız?');
  }
}
