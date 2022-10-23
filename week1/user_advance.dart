void main() {
  final String userName = 'Deniz';

  final int bankMoney = 100;
  const String bankName = 'D Bank';

  const String bankNamespecial = 'D BANK';
  const String user1 = 'Bank 1 Musteri';
  const double user1Money = 100.00;

  const String user2 = 'Bank 2 Musteri';
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print('User 2 Money: $user2Money');
}
