import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ola_chat/models/chat_user.dart';

part 'chat_channel.freezed.dart';

@freezed
class ChatChannel with _$ChatChannel {
  const ChatChannel._();

  const factory ChatChannel({
    required String id,
    required String name,
    required List<ChatUser> members,
    required String image,
    required String type,
  }) = _ChatChannel;
}
