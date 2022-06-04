import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ola_chat/models/chat_user.dart';
import 'package:ola_chat/services/avatar_helper.dart';
import 'package:ola_chat/services/stream_chat_repo/i_stream_chat_repo.dart';

part 'user_state_event.dart';
part 'user_state_state.dart';
part 'user_state_bloc.freezed.dart';

@injectable
class UserStateBloc extends Bloc<UserStateEvent, UserStateState> {
  final IStreamRepo _streamRepo;
  UserStateBloc(this._streamRepo) : super(const UserStateState.loggedOut()) {
    on<UserStateEvent>((event, emit) async {
      await event.map(
        logIn: (e) async {
          if (e.name.isEmpty) {
            emit(const UserStateState.error());
          } else {
            emit(const UserStateState.loading());
            final data = await _streamRepo.connectUser(
              ChatUser(
                id: e.name,
                name: e.name,
                image: AvatarHelper.getUserAvatar(e.name),
              ),
            );
            emit(
              data.fold(
                (l) => const UserStateState.error(),
                (r) => UserStateState.loggedIn(
                  ChatUser(
                    id: e.name,
                    name: e.name,
                    image: AvatarHelper.getUserAvatar(e.name),
                  ),
                ),
              ),
            );
          }
        },
        logOut: (e) async {
          //TODO implement disconnect user from stream repo
          await _streamRepo.disconnectUser();
          emit(const UserStateState.loggedOut());
        },
      );
    });
  }
}
