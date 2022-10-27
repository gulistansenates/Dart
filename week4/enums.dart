void main() {
  final customerMouse = Mouses.lenovo;

  print(customerMouse.index);

  print(customerMouse.name);

  if (customerMouse == Mouses.lenovo) {}

  if (customerMouse.name == 'lenovo') {}

  if (customerMouse.isCheckName('lenovo')) {
    print('Hello');
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  lenovo,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
