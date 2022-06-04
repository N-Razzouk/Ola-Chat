import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/logic/user_state/user_state_bloc.dart';
import 'package:ola_chat/utils/app_theme.dart';
import 'package:ola_chat/view/splash/splash_screen.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configureDependencies();

  /// Create a new instance of [StreamChatClient] passing the apikey obtained from your
  /// project dashboard.

  /// Set the current user. In a production scenario, this should be done using
  /// a backend to generate a user token using our server SDK.
  /// Please see the following for more information:
  /// https://getstream.io/chat/docs/flutter-dart/tokens_and_authentication/?language=dart
  // if (client.state.currentUser != null) {
  //   await client.disconnectUser();
  // }
  // await client.connectUser(
  //   User(id: 'qwerty'),
  //   client.devToken('qwerty').rawValue,
  // );

  /// Creates a channel using the type `messaging` and `flutterdevs`.
  /// Channels are containers for holding messages between different members. To
  /// learn more about channels and some of our predefined types, checkout our
  /// our channel docs: https://getstream.io/chat/docs/flutter-dart/creating_channels/?language=dart
  // final channel = client.channel('messaging', id: 'flutterdevs2');

  /// `.watch()` is used to create and listen to the channel for updates. If the
  /// channel already exists, it will simply listen for new events.
  // await channel.watch();

  // runApp(
  //   const MainChatAppStream(),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  /// The channel we'd like to observe and participate.
  // final Channel channel;
  // void connectFakeUser() async {
  //   await client.disconnectUser();
  //   await client.connectUser(
  //       User(id: 'poat'), client.devToken('poat').rawValue);
  // }

  @override
  Widget build(BuildContext context) {
    // connectFakeUser();
    return BlocProvider(
      create: (context) => getIt<UserStateBloc>(),
      child: MaterialApp(
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        title: 'Ola Chat',
        builder: (context, widget) {
          return StreamChat(
            client: getIt<StreamChatClient>(),
            child: widget,
          );
        },
        home: const SplashScreen(),
      ),
    );
  }
}
