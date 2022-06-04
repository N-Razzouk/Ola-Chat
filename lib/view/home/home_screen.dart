import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/logic/channels_list/channels_list_bloc.dart';
import 'package:ola_chat/logic/user_state/user_state_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/chats/chats_screen.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:ola_chat/view/create_chat/create_chat_screen.dart';
import 'package:ola_chat/view/home/settings/settings_screen.dart';
import 'package:ola_chat/view/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

class HomeNavNotifier extends ChangeNotifier {
  int index = 0;

  void changeIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }
}

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homePageController = usePageController(initialPage: 0);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeNavNotifier>(
          create: (context) => HomeNavNotifier(),
        ),
        BlocProvider(
          create: (context) => getIt<ChannelsListBloc>(),
        ),
        // BlocProvider(
        //     create: (context) =>
        //         getIt<UsersListBloc>()..add(const UsersListEvent.getUsers())),
      ],
      child: BlocListener<UserStateBloc, UserStateState>(
        listener: (context, state) {
          state.maybeMap(
              loggedOut: (_) {
                popAllAndPush(context, const WelcomeScreen());
              },
              orElse: () => null);
        },
        child: Consumer<HomeNavNotifier>(
          builder: (context, pro, _) {
            if (homePageController.hasClients) {
              homePageController.animateToPage(
                pro.index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
            return Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: homePageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const ChatsScreen(),
                      const CreateChatScreen(),
                      const SettingsScreen(),
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const HomeNavBar(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<HomeNavNotifier>(context, listen: false);
    return Consumer<HomeNavNotifier>(
      builder: (context, _, __) => Material(
        elevation: 12.0,
        color: Colors.white,
        child: Container(
          height: 80,
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                ),
                onPressed: () {
                  pro.changeIndex(0);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.chat_bubble,
                      color: pro.index == 0 ? Colors.blue : Colors.grey,
                    ),
                    SizeItUp.height5,
                    Text(
                      'Chats',
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        color: pro.index == 0 ? Colors.blue : Colors.grey,
                      )),
                    ),
                  ],
                ),
              ),
              SizeItUp.width20,
              SizeItUp.width20,
              Column(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: FloatingActionButton(
                      onPressed: () {
                        pro.changeIndex(1);
                      },
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.add,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
              SizeItUp.width20,
              SizeItUp.width20,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                ),
                onPressed: () {
                  pro.changeIndex(2);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.settings,
                      color: pro.index == 2 ? Colors.blue : Colors.grey,
                    ),
                    SizeItUp.height5,
                    Text(
                      'Settings',
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        color: pro.index == 2 ? Colors.blue : Colors.grey,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
