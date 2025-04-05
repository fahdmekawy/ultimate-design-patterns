import 'package:dart_lang/b_behavioral/a_observer/c_exercise/exercise.dart';

class Newsletter implements Notifier {
  final String _title;

  const Newsletter({required String title}) : _title = title;

  String get title => _title;

  @override
  EventType get eventType => EventType.newsletter;

  @override
  String get templateNotifyingMessage =>
      "New newsletter $_title is published...";
}
