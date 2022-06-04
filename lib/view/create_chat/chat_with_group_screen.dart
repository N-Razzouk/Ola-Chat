import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ola_chat/logic/create_chat/create_chat_bloc.dart';
import 'package:ola_chat/logic/user_list/users_list_bloc.dart';
import 'package:ola_chat/services/avatar_helper.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:ola_chat/view/create_chat/widgets/user_choice_avatar.dart';
import 'package:ola_chat/view/home/home_screen.dart';

class ChatWithGroupScreen extends StatelessWidget {
  const ChatWithGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UsersListBloc, UsersListState>(
        builder: (context, usersListState) {
          return BlocBuilder<CreateChatBloc, CreateChatState>(
            builder: (context, state) {
              return ListView(
                children: [
                  Container(
                    height: 350,
                    color: Colors.black.withOpacity(0.08),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizeItUp.height10,
                        const Text(
                          'Choose Image',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizeItUp.height10,
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: AvatarHelper.channelImages.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => context.read<CreateChatBloc>().add(
                                    CreateChatEvent.setGroupImage(
                                      AvatarHelper.channelImages[index],
                                    ),
                                  ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.network(
                                      AvatarHelper.channelImages[index],
                                      height: 80,
                                    ),
                                  ),
                                  if (state.image ==
                                      AvatarHelper.channelImages[index])
                                    const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.check_outlined,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizeItUp.height10,
                        const Text(
                          'Team Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizeItUp.height10,
                        TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.5,
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16.0),
                            hintText: 'Name..',
                          ),
                          onChanged: (val) {
                            context
                                .read<CreateChatBloc>()
                                .add(CreateChatEvent.createGroupName(val));
                          },
                        ),
                        SizeItUp.height10,
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: state.users
                                .map((e) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: UserChoiceAvatar(
                                        isSelected: true,
                                        user: e,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text('List of users'),
                  Center(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: usersListState.maybeMap(
                          loadSuccess: (success) => List.generate(
                                success.usersList.length,
                                (index) => GestureDetector(
                                  onTap: () =>
                                      context.read<CreateChatBloc>().add(
                                            CreateChatEvent.addUser(
                                              success.usersList[index],
                                            ),
                                          ),
                                  child: UserChoiceAvatar(
                                    user: success.usersList[index],
                                    isSelected: state.users
                                        .contains(success.usersList[index]),
                                  ),
                                ),
                              ),
                          orElse: () => []),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        onPressed: () {
          context
              .read<CreateChatBloc>()
              .add(const CreateChatEvent.createUserChat());
          context.read<HomeNavNotifier>().changeIndex(0);
        },
        child: const Text(
          'Start chatting',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
