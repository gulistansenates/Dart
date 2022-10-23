void main() {
  List<int> moneys = [100, 300, 110, 120, 109, 150];
  final List<int> newMoneys = [3, 33, 333, 3333, 33333];

  print('musteri 1 parasi: ${moneys[0]}');

  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 200);
  print(moneys);

  newMoneys.add(5);
  newMoneys.clear();

  print(newMoneys);

  print(newMoneys);

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();
  for (int index = 0; index < moneyCustomerNews.length; index += 1) {
    print('musteri parasi: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi verelim');
    } else if (moneyCustomerNews[index] > 0) {
      print('kontrol edelim');
    } else {
      print('güle güle');
    }
  }
  for (int index = moneyCustomerNews.length - 1; index >= 0; index += -1) {
    print('musteri parasi: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi verelim');
    } else if (moneyCustomerNews[index] > 0) {
      print('kontrol edelim');
    } else {
      print('güle güle');
    }
  }

  print('aaaa');
  List<dynamic> users = [1, 'a', true];

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['gülistan', 'burak', 'mislina'];

  userNames.contains('deniz');

  for (var item in userNames) {
    if (item == 'deniz') {
      print('var');
    }
  }
}
