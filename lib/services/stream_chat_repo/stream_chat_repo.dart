import 'package:injectable/injectable.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/models/chat_user.dart';
import 'package:ola_chat/services/avatar_helper.dart';
import 'package:ola_chat/services/core/api_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ola_chat/services/stream_chat_repo/i_stream_chat_repo.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

@LazySingleton(as: IStreamRepo)
class StreamRepo implements IStreamRepo {
  final client = getIt<StreamChatClient>();

  @override
  Future<Either<ApiFailure, String>> connectUser(ChatUser user) async {
    try {
      await client.disconnectUser();
      await client.connectUser(
          User(
              id: user.name,
              extraData: {'ímage': AvatarHelper.getUserAvatar(user.name)}),
          client.devToken(user.name).rawValue);
      return right('connected');
    } catch (e) {
      return left(const ApiFailure.streamError());
    }
  }

  @override
  Future<Either<ApiFailure, String>> getChannelList(String userId) async {
    try {
      final res = client.queryChannels(filter: const Filter.empty());
      final one = await res.map((e) => e).toList();

      return right(one.toString());
    } catch (e) {
      return left(const ApiFailure.streamError());
    }
  }

  @override
  Future<Either<ApiFailure, List<ChatUser>>> getUsersList() async {
    try {
      final res = await client.queryUsers(filter: const Filter.empty());
      final users = res.users
          .map((e) => ChatUser(
              id: e.id,
              name: e.name,
              image: e.image ?? AvatarHelper.getUserAvatar(e.name)))
          .where(
            (element) => element.id != client.state.currentUser!.id,
          )
          .toList();
      return right(users);
    } catch (e) {
      return left(const ApiFailure.streamError());
    }
  }

  @override
  Future<Either<ApiFailure, Channel>> createChannel(
      List<ChatUser> users, String name) async {
    try {
      // init private chat channel
      String channelId = '';
      final currentUser = client.state.currentUser!;
      final newList = [
        ChatUser(
            id: currentUser.id,
            name: currentUser.name,
            image: currentUser.extraData['image'].toString()),
        ...users
      ];
      newList.sort((a, b) => a.name.compareTo(b.name));
      for (var element in newList) {
        channelId + element.name.toString();
      }
      channelId = channelId;
      final channel = client.channel(
        'messaging',
        id: channelId,
        extraData: users.length > 1
            ? {
                'name': name,
                'image': AvatarHelper.getChannelImage(),
                'members': newList.map((e) => e.id).toList(),
              }
            : {
                'members': newList.map((e) => e.id).toList(),
              },
      );
      await channel.watch();
      return right(channel);
    } catch (e) {
      return left(const ApiFailure.streamError());
    }
  }

  @override
  Future<Either<ApiFailure, String>> disconnectUser() async {
    try {
      await client.disconnectUser();
      return right('connected');
    } catch (e) {
      return left(const ApiFailure.streamError());
    }
  }
}
