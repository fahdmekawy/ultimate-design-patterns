class Order {
  String? _name;
  double? _price;
  static const double shippingCost = 10.0;

  String? get name => _name;
  double? get price => _price;

  double get getTotalPrice => price ?? 0 + shippingCost;
}
