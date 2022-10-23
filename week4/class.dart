import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  final int customerMoney = 50;
  final String customerName = "Deniz";
  final int customerAge = 22;
  final String customerCity = 'Siverek';

  controlCustomerAge(customerMoney);

  final int customerMoney2 = 50;
  final String customerName2 = "Gülistan";
  final int customerAge2 = 13;
  final String customerCity2 = 'Adana';

  controlCustomerAge(customerMoney2);

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('Hanfendi :)');
      } else {
        print('Güle Güle');
      }
    } else {
      print(' Hesap Açınız');
    }

    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  int customerMoneyX = 15;
  User user1 = User('ds', 15, age: 21, city: 'abc', id: '123');

  final user3 = User('ab', 159, age: 22, id: '1234');

  print(user3.userCode);

  print(user1.name);

  if (user3.city == null) {
    print('Şehir Bilgisi Verilmemiş');
  } else {
    if (user3.city!.isEmpty) {
      print('Tamam');
    }

    if (user3.city == 'Eskişehir') {
      print('Tebrikler Kazandınız');
    }
  }

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('Para Eklendi');
  }

  //

  User2 newUser2 = User2('ds', 35);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('Alışveriş Yapabilirsiniz');
  } else {
    print('Alışveriş Yapamazsınız');
  }
}
