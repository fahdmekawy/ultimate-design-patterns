import 'package:dart_lang/b_behavioral/a_observer/b_enhanced_solution/subscriber.dart';

class Customer implements Subscriber {
  final String _name;

  Customer({required String name}) : _name = name;

  String get name => _name;

  @override
  void notify(String message) {
    print("Notifying $_name about: $message");
  }
}
