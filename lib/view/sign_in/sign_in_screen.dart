import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ola_chat/utils/naviation_utils.dart';
import 'package:ola_chat/view/home/home_screen.dart';
import 'package:ola_chat/view/sign_in/sign_in_cubit.dart';
import 'package:ola_chat/view/sign_up/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state == SignInState.none) {
            pushAndReplace(context, const SignUpScreen());
          } else {
            pushAndReplace(context, const HomeScreen());
          }
        },
        builder: (context, state) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Ola Chat',
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO redirect to Profile_verify
                    context.read<SignInCubit>().signIn();
                  },
                  child: const Text('Sign in with Google'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
