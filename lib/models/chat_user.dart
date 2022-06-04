import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user.freezed.dart';

@freezed
class ChatUser with _$ChatUser {
  const ChatUser._();

  const factory ChatUser({
    required String id,
    required String name,
    required String image,
  }) = _ChatUser;
}
