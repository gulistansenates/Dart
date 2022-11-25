Future<void> main(List<String> args) async {
  print('A');
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  print(await bankMoneys.where((event) => event == 258).toList());

  print('ABC');

  print('Hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Adiyos');
  });
  print('Çav');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('ByeBye');
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
