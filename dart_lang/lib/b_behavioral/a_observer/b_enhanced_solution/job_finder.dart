import 'package:dart_lang/b_behavioral/a_observer/b_enhanced_solution/observer.dart';

class JobFinder implements Subscriber {
  final String _name;

  JobFinder({required String name}) : _name = name;

  String get name => _name;

  @override
  void notify(String message) {
    print("Notifying $_name about: $message");
  }
}
