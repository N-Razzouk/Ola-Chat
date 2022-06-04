part of 'users_list_bloc.dart';

@freezed
class UsersListState with _$UsersListState {
  const factory UsersListState.initial() = _Initial;
  const factory UsersListState.loading() = _Loading;
  const factory UsersListState.loadSuccess(List<ChatUser> usersList) =
      _LoadSuccess;
  const factory UsersListState.loadFailure(ApiFailure failure) = _LoadFailure;
}
