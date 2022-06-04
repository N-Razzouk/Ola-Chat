import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/logic/create_chat/create_chat_bloc.dart';
import 'package:ola_chat/logic/user_list/users_list_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/channel_page.dart';
import 'package:ola_chat/view/create_chat/chat_with_group_screen.dart';
import 'package:ola_chat/view/create_chat/chat_with_user_screen.dart';
import 'package:provider/provider.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CreateChatNotifier extends ChangeNotifier {
  int index = 0;

  void changeIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }
}

class CreateChatScreen extends StatelessWidget {
  const CreateChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CreateChatNotifier>(
      create: (context) => CreateChatNotifier(),
      child: Consumer<CreateChatNotifier>(
        builder: (context, pro, __) => Scaffold(
          appBar: AppBar(
            title: Text(
              pro.index == 0
                  ? 'Choose a user to chat with'
                  : 'Create your team!',
              style: GoogleFonts.raleway(
                  textStyle: const TextStyle(color: Colors.black)),
            ),
            automaticallyImplyLeading: false,
            leading: pro.index == 0
                ? null
                : BackButton(
                    color: Colors.black,
                    onPressed: () => pro.changeIndex(0),
                  ),
            backgroundColor: Colors.white,
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<UsersListBloc>()
                  ..add(const UsersListEvent.getUsers()),
              ),
              BlocProvider(
                create: (context) => getIt<CreateChatBloc>(),
              ),
            ],
            child: BlocListener<CreateChatBloc, CreateChatState>(
              listener: (context, state) {
                if (state.channel != null) {
                  pushToPage(
                      context,
                      StreamChannel(
                        channel: state.channel!,
                        child: const ChannelPage(),
                      ));
                }
              },
              child: IndexedStack(
                index: Provider.of<CreateChatNotifier>(context, listen: true)
                    .index,
                children: const [
                  ChatWithUserScreen(),
                  ChatWithGroupScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
