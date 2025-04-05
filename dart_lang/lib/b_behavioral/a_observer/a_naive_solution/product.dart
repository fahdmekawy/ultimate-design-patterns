class Product {
  final String _name;
  final double _price;

  Product({required String name, required double price})
      : _name = name,
        _price = price;

  double get price => _price;

  String get name => _name;
}
