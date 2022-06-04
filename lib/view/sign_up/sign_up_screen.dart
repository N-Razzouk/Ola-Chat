import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/home/home_screen.dart';
import 'package:ola_chat/view/sign_up/sign_up_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, ProfileState>(
        listener: (context, state) {
          // TODO: implement listene
          if (state.success) {
            pushAndReplace(context, const HomeScreen());
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Verify your Identity'),
                  const Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                  IconButton(
                    onPressed: () {
                      //TODO implement add photo function
                      context.read<SignUpCubit>().pickImage();
                    },
                    icon: const Icon(
                      Icons.photo,
                    ),
                  ),
                  const Text(
                    'Your name',
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Or just how people know you..',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO verify user and redirect to homepage
                      context.read<SignUpCubit>().register();
                      // pushAndReplace(
                      //   context,
                      //   HomeScreen(),
                      // );
                    },
                    child: const Text('Start chatting now.'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
