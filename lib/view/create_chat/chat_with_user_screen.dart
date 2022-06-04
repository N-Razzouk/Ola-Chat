import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/logic/create_chat/create_chat_bloc.dart';
import 'package:ola_chat/logic/user_list/users_list_bloc.dart';
import 'package:ola_chat/view/create_chat/create_chat_screen.dart';

class ChatWithUserScreen extends StatelessWidget {
  const ChatWithUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UsersListBloc, UsersListState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (success) => ListView.builder(
              itemCount: success.usersList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context
                      .read<CreateChatBloc>()
                      .add(CreateChatEvent.addUser(success.usersList[index]));
                  context
                      .read<CreateChatBloc>()
                      .add(const CreateChatEvent.createUserChat());
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(success.usersList[index].image),
                  ),
                  title: Text(success.usersList[index].name),
                ),
              ),
            ),
            loadFailure: (_) => Container(
              child: const Text('loadFAIL!'),
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          context.read<CreateChatNotifier>().changeIndex(1);
        },
        child: Text(
          'Create a team!',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
