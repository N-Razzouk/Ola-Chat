import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/injection.dart';
import 'package:ola_chat/logic/user_state/user_state_bloc.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = getIt<StreamChatClient>().state.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Settings',
          style: GoogleFonts.raleway(
              textStyle: const TextStyle(color: Colors.black)),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizeItUp.height30,
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                user.extraData['image'].toString(),
              ),
            ),
            const Divider(),
            SizeItUp.height30,
            SizeItUp.height30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dark mode',
                  style: GoogleFonts.raleway(),
                ),
                SizeItUp.width30,
                SizeItUp.width30,
                SizeItUp.width30,
                Switch.adaptive(
                  value: false,
                  onChanged: (newValue) {
                    //TODO implement dark mode functionality
                  },
                ),
              ],
            ),
            SizeItUp.height30,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    shape: const StadiumBorder()),
                onPressed: () {
                  //TODO implement logout functionality
                  context
                      .read<UserStateBloc>()
                      .add(const UserStateEvent.logOut());
                },
                child: Text(
                  'Log out',
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
