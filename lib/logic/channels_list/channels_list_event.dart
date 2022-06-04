part of 'channels_list_bloc.dart';

@freezed
class ChannelsListEvent with _$ChannelsListEvent {
  const factory ChannelsListEvent.getChannelsList() = _GetChannelsList;
}
