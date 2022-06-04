import 'package:flutter/material.dart';
import 'package:ola_chat/services/avatar_helper.dart';
import 'package:ola_chat/view/channel_page.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelListPage extends StatefulWidget {
  const ChannelListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChannelListPage> createState() => _ChannelListPageState();
}

class _ChannelListPageState extends State<ChannelListPage> {
  final channelTextController = TextEditingController();
  late final _listController = StreamChannelListController(
    client: StreamChat.of(context).client,
    filter: Filter.in_(
      'members',
      [StreamChat.of(context).currentUser!.id],
    ),
    sort: const [SortOption('last_message_at')],
    limit: 20,
  );

  Stream<List<Channel>>? users;

  // void start() async {
  //   final Stream<List<Channel>> newUsers =
  //       StreamChat.of(context).client.queryChannels();
  //   setState(() {
  //     users = newUsers;
  //   });
  // }

  Future<void> _onCreateChannel() async {
    final res = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Channel'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Welcome to Ola Chat!'),
            TextField(
              controller: channelTextController,
              decoration: const InputDecoration(
                hintText: 'Channel Name',
                // errorText: errorText.value,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(channelTextController.text);
              },
              child: const Text(
                'Save',
              ),
            ),
          ],
        ),
      ),
    );
    if (res != null) {
      final client = StreamChat.of(context).client;
      final channel = client.channel(
        'messaging',
        id: res,
        extraData: {
          'image': AvatarHelper.getChannelImage(),
        },
      );
      await channel.watch();
      await channel.addMembers([client.state.currentUser!.id]);
      await _listController.refresh();
    }
  }

  @override
  void dispose() {
    channelTextController.dispose();
    _listController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Public Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamChannelListView(
              controller: _listController,
              onChannelTap: (channel) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return StreamChannel(
                        channel: channel,
                        child: const ChannelPage(),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Text(users != null ? users!.toList().toString() : 'rar'),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onCreateChannel,
        // Navigator.of(context).push((context, (context, rider),),);        },
        label: const Text('Create Channel'),
      ),
    );
  }
}
