import 'package:dart_lang/b_behavioral/a_observer/c_exercise/event_type.dart';

abstract class Notifier {
  String get templateNotifyingMessage;

  EventType get eventType;
}
