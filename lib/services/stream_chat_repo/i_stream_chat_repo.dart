import 'package:dartz/dartz.dart';
import 'package:ola_chat/models/chat_user.dart';
import 'package:ola_chat/services/core/api_failure.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

abstract class IStreamRepo {
  Future<Either<ApiFailure, List<ChatUser>>> getUsersList();
  Future<Either<ApiFailure, String>> getChannelList(String userId);
  Future<Either<ApiFailure, String>> connectUser(ChatUser user);
  Future<Either<ApiFailure, String>> disconnectUser();
  Future<Either<ApiFailure, Channel>> createChannel(
    List<ChatUser> users,
    String name,
  );
}
