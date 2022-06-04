part of 'channels_list_bloc.dart';

@freezed
class ChannelsListState with _$ChannelsListState {
  const factory ChannelsListState.initial() = _Initial;
  const factory ChannelsListState.loading() = _Loading;
  const factory ChannelsListState.loadSuccess(String success) = _LoadSuccess;
  const factory ChannelsListState.loadFailure(ApiFailure failure) =
      _LoadFailure;
}
