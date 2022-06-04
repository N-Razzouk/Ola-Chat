part of 'user_state_bloc.dart';

@freezed
class UserStateEvent with _$UserStateEvent {
  const factory UserStateEvent.logIn(String name) = _LogIn;
  const factory UserStateEvent.logOut() = _LogOut;
}
