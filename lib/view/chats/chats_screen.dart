import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/logic/channels_list/channels_list_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/channel_page.dart';
import 'package:ola_chat/view/chats/widgets/group_avatar.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final groupListController = StreamChannelListController(
    client: getIt<StreamChatClient>(),
    // filter: Filter.in_(
    //   'members',
    //   [getIt<StreamChatClient>().state.currentUser!.id],
    // ),
    filter: Filter.and([
      Filter.in_(
        'members',
        [getIt<StreamChatClient>().state.currentUser!.id],
      ),
      Filter.greaterOrEqual('member_count', 3),
    ]),
    // filter: const Filter.empty(),
    sort: const [SortOption('last_message_at')],
    limit: 20,
  );
  final userListController = StreamChannelListController(
    client: getIt<StreamChatClient>(),
    // filter: Filter.in_(
    //   'members',
    //   [getIt<StreamChatClient>().state.currentUser!.id],
    // ),
    filter: Filter.and([
      Filter.in_(
        'members',
        [getIt<StreamChatClient>().state.currentUser!.id],
      ),
      Filter.lessOrEqual('member_count', 2),
    ]),
    // filter: const Filter.empty(),
    sort: const [SortOption('last_message_at')],
    limit: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(color: Colors.black)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //TODO implement go to settings
            },
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: BlocBuilder<ChannelsListBloc, ChannelsListState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizeItUp.height20,
                    const Text(
                      'Teams',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizeItUp.height20,
                    Expanded(
                      child: StreamChannelListView(
                        controller: groupListController,
                        scrollDirection: Axis.horizontal,
                        emptyBuilder: (context) => Container(
                          child: const Text('No teams created yet!'),
                        ),
                        loadingBuilder: (context) => Container(),
                        itemBuilder: (_, channelsList, index, __) {
                          return GestureDetector(
                            onTap: () async {
                              channelsList[index].watch();
                              pushToPage(
                                context,
                                StreamChannel(
                                    channel: channelsList[index],
                                    child: const ChannelPage()),
                              );
                            },
                            child: SizedBox(
                              height: 120,
                              width: 100,
                              child: GroupAvatar(channel: channelsList[index]),
                            ),
                          );
                        },
                      ),
                    ),
                    SizeItUp.height20,
                  ],
                ),
              ),
              SizeItUp.height20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Private Chats',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizeItUp.height10,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: StreamChannelListView(
                    controller: userListController,
                    separatorBuilder: (context, _, __) => const Divider(),
                    onChannelTap: (channel) async {
                      channel.watch();
                      pushToPage(
                        context,
                        StreamChannel(
                            channel: channel, child: const ChannelPage()),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    groupListController.dispose();
    userListController.dispose();
    super.dispose();
  }
}
