part of 'user_state_bloc.dart';

@freezed
class UserStateState with _$UserStateState {
  const factory UserStateState.loading() = _Loading;
  const factory UserStateState.loggedOut() = _LoggedOut;
  const factory UserStateState.error() = _Error;
  const factory UserStateState.loggedIn(ChatUser user) = _LoggedIn;
}
