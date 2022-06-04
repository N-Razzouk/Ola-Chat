import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ola_chat/services/core/api_failure.dart';
import 'package:ola_chat/services/stream_chat_repo/i_stream_chat_repo.dart';

part 'channels_list_event.dart';
part 'channels_list_state.dart';
part 'channels_list_bloc.freezed.dart';

@injectable
class ChannelsListBloc extends Bloc<ChannelsListEvent, ChannelsListState> {
  final IStreamRepo _streamRepo;
  ChannelsListBloc(this._streamRepo)
      : super(const ChannelsListState.initial()) {
    on<ChannelsListEvent>((event, emit) async {
      await event.map(
        getChannelsList: (e) async {
          emit(const ChannelsListState.loading());
          final data = await _streamRepo.getChannelList('');
          emit(
            data.fold(
              (l) => ChannelsListState.loadFailure(l),
              (r) => ChannelsListState.loadSuccess(r),
            ),
          );
        },
      );
    });
  }
}
