void main() {
  Map<String, int> users = {'deniz': 20, 'burak': 30};

  print('denizin parasi ${users['deniz']}');

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  print('---------------------------------------------------');
  final Map<String, List<int>> dBank = {
    'deniz': [100, 300, 200]
  };
  dBank['burak'] = [30, 50];
  dBank['mislina'] = [30];

  for (var item in dBank.keys) {
    for (var money in dBank[item]!) {
      if (money > 150) {
        print('kredi hazir');
        break;
      }
    }
  }

  for (var name in dBank.keys) {
    int result = 0;
    for (var money in dBank[name]!) {
      result = result + money;
    }

    print('$name  toplam paran -> $result');
  }
}
