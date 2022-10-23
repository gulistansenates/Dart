void main() {
  int money = 5;
  money = money + 1;

  money += 1;
  money++;
  money--;

  String name = 'Deniz';
  String senates = 'senates';

  print(name + senates);

  if (name == 'Deniz') {}
  if (name.length > 'Deniz'.length) {}
  if (name.length < 'Deniz'.length) {}

  const int appleMoney = 10;
  const int discount = 2;

  int myMoney = 30;
  myMoney = myMoney - (appleMoney + discount);
  print('myMoney');

  print(myMoney % 2 == 0);
}
