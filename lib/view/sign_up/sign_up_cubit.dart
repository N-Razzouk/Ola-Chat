import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileState {
  const ProfileState(this.file, {this.success = false});
  final File? file;
  final bool success;
}

class SignUpCubit extends Cubit<ProfileState> {
  SignUpCubit() : super(const ProfileState(null));
  final usernameController = TextEditingController();

  void register() async {
    //TODO user services to register`
    await Future.delayed(const Duration(seconds: 2));
    final file = state.file;
    final name = usernameController.text;
    emit(ProfileState(file, success: true));
  }

  void pickImage() async {
    //TODO use services
    emit(ProfileState(File('')));
  }
}
