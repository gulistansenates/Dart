import 'class_singleton.dart';

void main(List<String> args) {
  final carItems = [
    CarModel(
        category: CarModels.bmw, name: 'BMW', money: 11, isSecondHand: false),
    CarModel(category: CarModels.mercedes, name: 'Mercedes', money: 22),
    CarModel(
        category: CarModels.toyota,
        name: 'Toyota',
        money: 33,
        isSecondHand: false),
    CarModel(category: CarModels.volvo, name: 'Volvo', money: 44),
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'BMW', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('Var');
  } else {
    print('Yok');
  }

  final reusltBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(reusltBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarVolvo = false;
  try {
    final volvoCar =
        carItems.singleWhere((element) => element.category == CarModels.volvo);
    print(volvoCar.name);
    isHaveCarVolvo = true;
  } catch (e) {
    print('Araba Yok Yok');
    isHaveCarVolvo = false;
  } finally {
    print('Bir Daha Sorma $isHaveCarVolvo');
  }

  final index = carItems.indexOf(newCar);
  print(index);
  final _volvo =
      CarModel(category: CarModels.volvo, name: 'Merer', money: 12345);
  carItems.add(_volvo);
  carItems.sort((first, second) => second.money.compareTo(first.money));

  calculateToUser(carItems);
  carItems.remove(_volvo);
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    return CarModel(
        category: e.category == CarModels.bmw ? CarModels.mercedes : e.category,
        name: e.name,
        money: e.money,
        isSecondHand: false);
  }).toList();

  print(newItems);
}

class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const []});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, mercedes, toyota, volvo }
