// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i5;

import 'logic/channels_list/channels_list_bloc.dart' as _i8;
import 'logic/create_chat/create_chat_bloc.dart' as _i9;
import 'logic/user_list/users_list_bloc.dart' as _i7;
import 'logic/user_state/user_state_bloc.dart' as _i6;
import 'services/stream_chat_repo/i_stream_chat_repo.dart' as _i3;
import 'services/stream_chat_repo/stream_chat_repo.dart' as _i4;
import 'utils/injectable_modules.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.IStreamRepo>(() => _i4.StreamRepo());
  gh.lazySingleton<_i5.StreamChatClient>(() => injectableModule.client);
  gh.factory<_i6.UserStateBloc>(
      () => _i6.UserStateBloc(get<_i3.IStreamRepo>()));
  gh.factory<_i7.UsersListBloc>(
      () => _i7.UsersListBloc(get<_i3.IStreamRepo>()));
  gh.factory<_i8.ChannelsListBloc>(
      () => _i8.ChannelsListBloc(get<_i3.IStreamRepo>()));
  gh.factory<_i9.CreateChatBloc>(
      () => _i9.CreateChatBloc(get<_i3.IStreamRepo>()));
  return get;
}

class _$InjectableModule extends _i10.InjectableModule {}
