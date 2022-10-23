void main() {
/*  int money = 23;
  print('$money' + ' ' + 'userName');

  if (money > 10) {
    print('ZENGİNSİN');
  } else {
    print('FAKİRSİN');
  }
  money = money - 10;
  if (money > 10) {
    print(' ÇOK ZENGİNSİN');
  } else {
    print('FASFAKİRSİN');
  }

  int newCustomerMoney = 50;
  const int bankingCost = 5;
  const int bankingCostGeneral = 25;

  if (newCustomerMoney > bankingCost) {
    print('Hosgeldiniz');
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print('Lütfen Sıra Alınız');
  } else {
    print(' Lütfen Kredinizi Ödeyin');
  }
*/
  final String denizCompany = 'Deniz';
  final String gulistanCompany = 'Gülistan';
  final String burakCompany = 'Burak';
  final String mislinaCompany = 'Mislina';
  final String suCompany = 'Su';

  const int companyLength = 3;
  String results = '  ';

  if (denizCompany.length > companyLength) {
    results = results + denizCompany;
  }
  if (gulistanCompany.length > companyLength) {
    results = results + gulistanCompany;
  }
  if (burakCompany.length > companyLength) {
    results = results + burakCompany;
  }
  if (mislinaCompany.length > companyLength) {
    results = results + mislinaCompany;
  }
  if (suCompany.length > companyLength) {
    results = results + suCompany;

    print(results);
  }
}
