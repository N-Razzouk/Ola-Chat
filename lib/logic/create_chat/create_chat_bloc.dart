import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ola_chat/models/chat_user.dart';
import 'package:ola_chat/services/core/api_failure.dart';
import 'package:ola_chat/services/stream_chat_repo/i_stream_chat_repo.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

part 'create_chat_event.dart';
part 'create_chat_state.dart';
part 'create_chat_bloc.freezed.dart';

@injectable
class CreateChatBloc extends Bloc<CreateChatEvent, CreateChatState> {
  final IStreamRepo _streamRepo;
  CreateChatBloc(this._streamRepo) : super(CreateChatState.initial()) {
    on<CreateChatEvent>((event, emit) async {
      await event.map(
        addUser: (e) async {
          final newList = state.users.contains(e.user)
              ? state.users.where((element) => element != e.user)
              : [e.user, ...state.users];
          log(newList.toString());
          emit(
            state.copyWith(
              users: newList.toList(),
              saveFailureOrSuccessOption: null,
              channel: null,
            ),
          );
        },
        createGroupName: (e) async {
          emit(
            state.copyWith(name: e.name),
          );
        },
        setGroupImage: (e) async {
          emit(
            state.copyWith(
              image: e.image,
              saveFailureOrSuccessOption: null,
            ),
          );
        },
        createUserChat: (e) async {
          if (state.users.length > 1) {
            if (state.name.isEmpty) {
              emit(
                state.copyWith(
                  nameError: true,
                  saveFailureOrSuccessOption: null,
                ),
              );
            } else if (state.image.isEmpty) {
              emit(
                state.copyWith(
                  imageError: true,
                  saveFailureOrSuccessOption: null,
                ),
              );
            } else if (state.users.isEmpty) {
              emit(
                state.copyWith(
                  usersError: true,
                  saveFailureOrSuccessOption: null,
                ),
              );
            } else {
              emit(
                state.copyWith(
                  isSaving: true,
                  saveFailureOrSuccessOption: null,
                  channel: null,
                ),
              );
              final data =
                  await _streamRepo.createChannel(state.users, state.name);
              emit(
                state.copyWith(
                  isSaving: false,
                  saveFailureOrSuccessOption: data.fold(
                      (l) => left(const ApiFailure.streamError()),
                      (r) => right(unit)),
                  channel: data.fold((l) => null, (r) => r),
                ),
              );
            }
          } else {
            emit(
              state.copyWith(
                isSaving: true,
                saveFailureOrSuccessOption: null,
                channel: null,
              ),
            );
            final data =
                await _streamRepo.createChannel(state.users, state.name);
            emit(
              state.copyWith(
                isSaving: false,
                saveFailureOrSuccessOption: data.fold(
                    (l) => left(const ApiFailure.streamError()),
                    (r) => right(unit)),
                channel: data.fold((l) => null, (r) => r),
              ),
            );
          }
        },
      );
    });
  }
}
