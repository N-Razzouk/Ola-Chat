import 'package:flutter/material.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class GroupAvatar extends StatelessWidget {
  final Channel channel;
  const GroupAvatar({
    required this.channel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            channel.image.toString(),
          ),
        ),
        SizeItUp.height10,
        Text(channel.name.toString()),
      ],
    );
  }
}
