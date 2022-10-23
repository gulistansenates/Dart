void main() {
  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  // if (userMoney > 5) {
  //   print('parasi var');
  // } else {
  //   print('parasi yok');
  // }
  final int user2Money = 5;

  controlUserMoney(user2Money, 5);
  // if (user2Money > 5) {
  //   print('parasi var');
  // } else {
  //   print('parasi yok');
  // }

  final newUserMoney = 50;

  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney);

  print(result);
  if (result > 0) {}

  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newREsult3 = convertToEuro(userMoney: 500);
  sayHello('aa');
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print('parası var');
  } else {
    print('parası yok');
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}
