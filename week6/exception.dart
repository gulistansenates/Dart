void main(List<String> args) {
  String userName = "A";

  if (userName.length > 2) {
    print('A');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'Username null, bunu düzelt';
  }
}
