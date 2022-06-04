part of 'create_chat_bloc.dart';

@freezed
class CreateChatEvent with _$CreateChatEvent {
  const factory CreateChatEvent.addUser(ChatUser user) = _AddUser;
  const factory CreateChatEvent.createUserChat() = _CreateUserChat;
  const factory CreateChatEvent.setGroupImage(String image) = _SetGroupImage;
  const factory CreateChatEvent.createGroupName(String name) = _CreateGroupChat;
}
