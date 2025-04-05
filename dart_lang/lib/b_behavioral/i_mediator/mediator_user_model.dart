import 'package:dart_lang/b_behavioral/i_mediator/chat_mediator.dart';

class MediatorUserModel {
  String name;
  ChatMediator chatMediator;
  MediatorUserModel(this.name, this.chatMediator);
  void sendDirectMessage(String message, MediatorUserModel user) {
    chatMediator.sendDirectMessage(message, user, this);
  }

  void reciveDirectMessage(String message, MediatorUserModel user) {
    print('User ${user.name} received message: $message');
  }

  void sendMessageeGroup(String message, String groupName) {
    print('User $name send message: $message to group $groupName');
    // groupModel.receiveMessage(message, this);
    chatMediator.sendGroupMessage(message, groupName, this);
  }

  void reciveMessageeGroup(
      String message, String groupName, MediatorUserModel user) {
    print(
        ' in group $groupName User $name received message: $message from user ${user.name}');
    chatMediator.sendGroupMessage(message, groupName, this);
  }
}
