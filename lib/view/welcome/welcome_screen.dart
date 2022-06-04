import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ola_chat/logic/user_state/user_state_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/common/sized_boxes.dart';
import 'package:ola_chat/view/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserStateBloc, UserStateState>(
      listener: (context, state) {
        state.maybeMap(
            loggedIn: (_) {
              pushAndReplace(context, const HomeScreen());
            },
            orElse: () => null);
      },
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned(
              left: -164,
              top: 48,
              child: Hero(
                tag: 'blue182',
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 182,
                ),
              ),
            ),
            const Positioned(
              left: -164,
              top: 48,
              child: Hero(
                tag: 'black182',
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 152,
                ),
              ),
            ),
            const Positioned(
              right: -164,
              bottom: 48,
              child: Hero(
                tag: 'black152',
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 182,
                ),
              ),
            ),
            const Positioned(
              right: -164,
              bottom: 48,
              child: Hero(
                tag: 'blue152',
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 152,
                ),
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.2),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.all(24),
                elevation: 11,
                child: BlocBuilder<UserStateBloc, UserStateState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: state.maybeMap(
                          loading: (_) => [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [CircularProgressIndicator()],
                            )
                          ],
                          orElse: () => [
                            Text(
                              'Welcome to',
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(fontSize: 28.0),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Ola ',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                      fontSize: 48.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Chat',
                                    style: GoogleFonts.raleway(
                                      textStyle: const TextStyle(
                                          fontSize: 48.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizeItUp.height30,
                            Center(
                              child: Text(
                                'Verify your Identity',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                            SizeItUp.height30,
                            TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                hintText: 'Username...',
                                hintStyle: GoogleFonts.raleway(),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 12),
                              ),
                            ),
                            state.maybeMap(
                              error: (_) => Text(
                                'Please check your data',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              orElse: () => Container(),
                            ),
                            SizeItUp.height30,
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder()),
                              onPressed: () {
                                context.read<UserStateBloc>().add(
                                    UserStateEvent.logIn(_nameController.text));
                              },
                              child: const Text('Log in'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
