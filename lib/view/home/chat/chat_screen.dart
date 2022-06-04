import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ola_chat/view/home/chat/channel_page.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatScreen extends HookWidget {
  ChatScreen({Key? key}) : super(key: key);
  StreamChannelListController? _listController;

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        _listController = StreamChannelListController(
          client: StreamChat.of(context).client,
          filter: Filter.in_(
            'members',
            [StreamChat.of(context).currentUser!.id],
          ),
          sort: const [SortOption('last_message_at')],
          limit: 20,
        );
        return null;
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Public Chat'),
      ),
      body: StreamChannelListView(
        controller: _listController!,
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _onCreateChannel,
      //   // Navigator.of(context).push((context, (context, rider),),);        },
      //   label: const Text('Create Channel'),
      // ),
    );
  }
}
