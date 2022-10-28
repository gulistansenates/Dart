void main() {
  if ('Güli'.isAdmin()) ;
  print('objest');

  String? name;
  name.isAdmin();
}

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? ' ').toLowerCase() == 'admin'.toLowerCase();
  }
}
