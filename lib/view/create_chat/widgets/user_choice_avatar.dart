import 'package:flutter/material.dart';
import 'package:ola_chat/models/chat_user.dart';

class UserChoiceAvatar extends StatelessWidget {
  final ChatUser user;
  final bool isSelected;
  const UserChoiceAvatar(
      {required this.user, required this.isSelected, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: isSelected
              ? BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(8.0))
              : null,
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.image),
                radius: 24,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(user.name),
            ],
          ),
        ),
        if (isSelected)
          const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.check_outlined,
              size: 18,
              color: Colors.white,
            ),
          )
      ],
    );
  }
}
