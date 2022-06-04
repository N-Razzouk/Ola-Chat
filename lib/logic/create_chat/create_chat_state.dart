part of 'create_chat_bloc.dart';

@freezed
class CreateChatState with _$CreateChatState {
  const factory CreateChatState({
    required List<ChatUser> users,
    required String name,
    required String image,
    required bool isSaving,
    required Channel? channel,
    required bool nameError,
    required bool imageError,
    required bool usersError,
    required Either<ApiFailure, Unit>? saveFailureOrSuccessOption,
  }) = _CreateChatState;

  factory CreateChatState.initial() => const CreateChatState(
        users: [],
        name: '',
        image: '',
        isSaving: false,
        channel: null,
        nameError: false,
        imageError: false,
        usersError: false,
        saveFailureOrSuccessOption: null,
      );
}
