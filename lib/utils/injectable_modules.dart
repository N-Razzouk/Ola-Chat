import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  StreamChatClient get client => StreamChatClient(
        'wuhf9gxdxyer',
        logLevel: Level.INFO,
      );
}
