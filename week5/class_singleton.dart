import 'model/product_config_model.dart';

void main(List<String> args) {
  productNameChange();
  calculateMoney(Product.money ?? 0);

  productNameChange();

  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5£ Eklendi');
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;

  Product(this.name);

  Product.burki([this.name = 'Burki']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "Burki BANK";

  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
