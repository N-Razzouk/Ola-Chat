import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ola_chat/models/chat_user.dart';
import 'package:ola_chat/services/core/api_failure.dart';
import 'package:ola_chat/services/stream_chat_repo/i_stream_chat_repo.dart';

part 'users_list_event.dart';
part 'users_list_state.dart';
part 'users_list_bloc.freezed.dart';

@injectable
class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  final IStreamRepo _streamRepo;
  UsersListBloc(this._streamRepo) : super(const UsersListState.initial()) {
    on<UsersListEvent>((event, emit) async {
      await event.map(getUsers: (e) async {
        emit(const UsersListState.loading());
        final data = await _streamRepo.getUsersList();
        emit(data.fold((l) => UsersListState.loadFailure(l),
            (r) => UsersListState.loadSuccess(r)));
      });
    });
  }
}
