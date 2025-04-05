import 'package:dart_lang/b_behavioral/j_command/command_interface.dart';
import 'package:dart_lang/b_behavioral/j_command/models/tv_model.dart';

class TurnOffTv implements CommandInterface {
  final TvModel tv;

  TurnOffTv(TvModel tvModel) : tv = tvModel;

  @override
  void execute() {
    tv.turnOffTv();
  }
}
