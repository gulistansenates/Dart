void main() {
  final int classDegree = 5;
  bool isSucess = false;

  switch (classDegree) {
    case 2:
      print('Bravo');
      isSucess = true;
      break;
    case 1:
      print('olabilir');
      isSucess = true;
      break;
    case 0:
      print('yeterlii');
      isSucess = true;
      break;
    default:
      print('başarısız');
      isSucess = false;
  }
  print('çocuğunuzun başarısı : $isSucess');
}
