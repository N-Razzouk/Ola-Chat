// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatUser user) addUser,
    required TResult Function() createUserChat,
    required TResult Function(String image) setGroupImage,
    required TResult Function(String name) createGroupName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_CreateUserChat value) createUserChat,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_CreateGroupChat value) createGroupName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatEventCopyWith<$Res> {
  factory $CreateChatEventCopyWith(
          CreateChatEvent value, $Res Function(CreateChatEvent) then) =
      _$CreateChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateChatEventCopyWithImpl<$Res>
    implements $CreateChatEventCopyWith<$Res> {
  _$CreateChatEventCopyWithImpl(this._value, this._then);

  final CreateChatEvent _value;
  // ignore: unused_field
  final $Res Function(CreateChatEvent) _then;
}

/// @nodoc
abstract class _$$_AddUserCopyWith<$Res> {
  factory _$$_AddUserCopyWith(
          _$_AddUser value, $Res Function(_$_AddUser) then) =
      __$$_AddUserCopyWithImpl<$Res>;
  $Res call({ChatUser user});

  $ChatUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AddUserCopyWithImpl<$Res> extends _$CreateChatEventCopyWithImpl<$Res>
    implements _$$_AddUserCopyWith<$Res> {
  __$$_AddUserCopyWithImpl(_$_AddUser _value, $Res Function(_$_AddUser) _then)
      : super(_value, (v) => _then(v as _$_AddUser));

  @override
  _$_AddUser get _value => super._value as _$_AddUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AddUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ChatUser,
    ));
  }

  @override
  $ChatUserCopyWith<$Res> get user {
    return $ChatUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AddUser implements _AddUser {
  const _$_AddUser(this.user);

  @override
  final ChatUser user;

  @override
  String toString() {
    return 'CreateChatEvent.addUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUser &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AddUserCopyWith<_$_AddUser> get copyWith =>
      __$$_AddUserCopyWithImpl<_$_AddUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatUser user) addUser,
    required TResult Function() createUserChat,
    required TResult Function(String image) setGroupImage,
    required TResult Function(String name) createGroupName,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_CreateUserChat value) createUserChat,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_CreateGroupChat value) createGroupName,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _AddUser implements CreateChatEvent {
  const factory _AddUser(final ChatUser user) = _$_AddUser;

  ChatUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddUserCopyWith<_$_AddUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateUserChatCopyWith<$Res> {
  factory _$$_CreateUserChatCopyWith(
          _$_CreateUserChat value, $Res Function(_$_CreateUserChat) then) =
      __$$_CreateUserChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateUserChatCopyWithImpl<$Res>
    extends _$CreateChatEventCopyWithImpl<$Res>
    implements _$$_CreateUserChatCopyWith<$Res> {
  __$$_CreateUserChatCopyWithImpl(
      _$_CreateUserChat _value, $Res Function(_$_CreateUserChat) _then)
      : super(_value, (v) => _then(v as _$_CreateUserChat));

  @override
  _$_CreateUserChat get _value => super._value as _$_CreateUserChat;
}

/// @nodoc

class _$_CreateUserChat implements _CreateUserChat {
  const _$_CreateUserChat();

  @override
  String toString() {
    return 'CreateChatEvent.createUserChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateUserChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatUser user) addUser,
    required TResult Function() createUserChat,
    required TResult Function(String image) setGroupImage,
    required TResult Function(String name) createGroupName,
  }) {
    return createUserChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
  }) {
    return createUserChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
    required TResult orElse(),
  }) {
    if (createUserChat != null) {
      return createUserChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_CreateUserChat value) createUserChat,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_CreateGroupChat value) createGroupName,
  }) {
    return createUserChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
  }) {
    return createUserChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
    required TResult orElse(),
  }) {
    if (createUserChat != null) {
      return createUserChat(this);
    }
    return orElse();
  }
}

abstract class _CreateUserChat implements CreateChatEvent {
  const factory _CreateUserChat() = _$_CreateUserChat;
}

/// @nodoc
abstract class _$$_SetGroupImageCopyWith<$Res> {
  factory _$$_SetGroupImageCopyWith(
          _$_SetGroupImage value, $Res Function(_$_SetGroupImage) then) =
      __$$_SetGroupImageCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class __$$_SetGroupImageCopyWithImpl<$Res>
    extends _$CreateChatEventCopyWithImpl<$Res>
    implements _$$_SetGroupImageCopyWith<$Res> {
  __$$_SetGroupImageCopyWithImpl(
      _$_SetGroupImage _value, $Res Function(_$_SetGroupImage) _then)
      : super(_value, (v) => _then(v as _$_SetGroupImage));

  @override
  _$_SetGroupImage get _value => super._value as _$_SetGroupImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_SetGroupImage(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetGroupImage implements _SetGroupImage {
  const _$_SetGroupImage(this.image);

  @override
  final String image;

  @override
  String toString() {
    return 'CreateChatEvent.setGroupImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetGroupImage &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_SetGroupImageCopyWith<_$_SetGroupImage> get copyWith =>
      __$$_SetGroupImageCopyWithImpl<_$_SetGroupImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatUser user) addUser,
    required TResult Function() createUserChat,
    required TResult Function(String image) setGroupImage,
    required TResult Function(String name) createGroupName,
  }) {
    return setGroupImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
  }) {
    return setGroupImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
    required TResult orElse(),
  }) {
    if (setGroupImage != null) {
      return setGroupImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_CreateUserChat value) createUserChat,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_CreateGroupChat value) createGroupName,
  }) {
    return setGroupImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
  }) {
    return setGroupImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
    required TResult orElse(),
  }) {
    if (setGroupImage != null) {
      return setGroupImage(this);
    }
    return orElse();
  }
}

abstract class _SetGroupImage implements CreateChatEvent {
  const factory _SetGroupImage(final String image) = _$_SetGroupImage;

  String get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetGroupImageCopyWith<_$_SetGroupImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateGroupChatCopyWith<$Res> {
  factory _$$_CreateGroupChatCopyWith(
          _$_CreateGroupChat value, $Res Function(_$_CreateGroupChat) then) =
      __$$_CreateGroupChatCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$_CreateGroupChatCopyWithImpl<$Res>
    extends _$CreateChatEventCopyWithImpl<$Res>
    implements _$$_CreateGroupChatCopyWith<$Res> {
  __$$_CreateGroupChatCopyWithImpl(
      _$_CreateGroupChat _value, $Res Function(_$_CreateGroupChat) _then)
      : super(_value, (v) => _then(v as _$_CreateGroupChat));

  @override
  _$_CreateGroupChat get _value => super._value as _$_CreateGroupChat;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_CreateGroupChat(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateGroupChat implements _CreateGroupChat {
  const _$_CreateGroupChat(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateChatEvent.createGroupName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGroupChat &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CreateGroupChatCopyWith<_$_CreateGroupChat> get copyWith =>
      __$$_CreateGroupChatCopyWithImpl<_$_CreateGroupChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatUser user) addUser,
    required TResult Function() createUserChat,
    required TResult Function(String image) setGroupImage,
    required TResult Function(String name) createGroupName,
  }) {
    return createGroupName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
  }) {
    return createGroupName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatUser user)? addUser,
    TResult Function()? createUserChat,
    TResult Function(String image)? setGroupImage,
    TResult Function(String name)? createGroupName,
    required TResult orElse(),
  }) {
    if (createGroupName != null) {
      return createGroupName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddUser value) addUser,
    required TResult Function(_CreateUserChat value) createUserChat,
    required TResult Function(_SetGroupImage value) setGroupImage,
    required TResult Function(_CreateGroupChat value) createGroupName,
  }) {
    return createGroupName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
  }) {
    return createGroupName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddUser value)? addUser,
    TResult Function(_CreateUserChat value)? createUserChat,
    TResult Function(_SetGroupImage value)? setGroupImage,
    TResult Function(_CreateGroupChat value)? createGroupName,
    required TResult orElse(),
  }) {
    if (createGroupName != null) {
      return createGroupName(this);
    }
    return orElse();
  }
}

abstract class _CreateGroupChat implements CreateChatEvent {
  const factory _CreateGroupChat(final String name) = _$_CreateGroupChat;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CreateGroupChatCopyWith<_$_CreateGroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateChatState {
  List<ChatUser> get users => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Channel? get channel => throw _privateConstructorUsedError;
  bool get nameError => throw _privateConstructorUsedError;
  bool get imageError => throw _privateConstructorUsedError;
  bool get usersError => throw _privateConstructorUsedError;
  Either<ApiFailure, Unit>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateChatStateCopyWith<CreateChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatStateCopyWith<$Res> {
  factory $CreateChatStateCopyWith(
          CreateChatState value, $Res Function(CreateChatState) then) =
      _$CreateChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatUser> users,
      String name,
      String image,
      bool isSaving,
      Channel? channel,
      bool nameError,
      bool imageError,
      bool usersError,
      Either<ApiFailure, Unit>? saveFailureOrSuccessOption});
}

/// @nodoc
class _$CreateChatStateCopyWithImpl<$Res>
    implements $CreateChatStateCopyWith<$Res> {
  _$CreateChatStateCopyWithImpl(this._value, this._then);

  final CreateChatState _value;
  // ignore: unused_field
  final $Res Function(CreateChatState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? isSaving = freezed,
    Object? channel = freezed,
    Object? nameError = freezed,
    Object? imageError = freezed,
    Object? usersError = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      nameError: nameError == freezed
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageError: imageError == freezed
          ? _value.imageError
          : imageError // ignore: cast_nullable_to_non_nullable
              as bool,
      usersError: usersError == freezed
          ? _value.usersError
          : usersError // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateChatStateCopyWith<$Res>
    implements $CreateChatStateCopyWith<$Res> {
  factory _$$_CreateChatStateCopyWith(
          _$_CreateChatState value, $Res Function(_$_CreateChatState) then) =
      __$$_CreateChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ChatUser> users,
      String name,
      String image,
      bool isSaving,
      Channel? channel,
      bool nameError,
      bool imageError,
      bool usersError,
      Either<ApiFailure, Unit>? saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_CreateChatStateCopyWithImpl<$Res>
    extends _$CreateChatStateCopyWithImpl<$Res>
    implements _$$_CreateChatStateCopyWith<$Res> {
  __$$_CreateChatStateCopyWithImpl(
      _$_CreateChatState _value, $Res Function(_$_CreateChatState) _then)
      : super(_value, (v) => _then(v as _$_CreateChatState));

  @override
  _$_CreateChatState get _value => super._value as _$_CreateChatState;

  @override
  $Res call({
    Object? users = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? isSaving = freezed,
    Object? channel = freezed,
    Object? nameError = freezed,
    Object? imageError = freezed,
    Object? usersError = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_CreateChatState(
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel?,
      nameError: nameError == freezed
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageError: imageError == freezed
          ? _value.imageError
          : imageError // ignore: cast_nullable_to_non_nullable
              as bool,
      usersError: usersError == freezed
          ? _value.usersError
          : usersError // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_CreateChatState implements _CreateChatState {
  const _$_CreateChatState(
      {required final List<ChatUser> users,
      required this.name,
      required this.image,
      required this.isSaving,
      required this.channel,
      required this.nameError,
      required this.imageError,
      required this.usersError,
      required this.saveFailureOrSuccessOption})
      : _users = users;

  final List<ChatUser> _users;
  @override
  List<ChatUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String name;
  @override
  final String image;
  @override
  final bool isSaving;
  @override
  final Channel? channel;
  @override
  final bool nameError;
  @override
  final bool imageError;
  @override
  final bool usersError;
  @override
  final Either<ApiFailure, Unit>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateChatState(users: $users, name: $name, image: $image, isSaving: $isSaving, channel: $channel, nameError: $nameError, imageError: $imageError, usersError: $usersError, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChatState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.channel, channel) &&
            const DeepCollectionEquality().equals(other.nameError, nameError) &&
            const DeepCollectionEquality()
                .equals(other.imageError, imageError) &&
            const DeepCollectionEquality()
                .equals(other.usersError, usersError) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(channel),
      const DeepCollectionEquality().hash(nameError),
      const DeepCollectionEquality().hash(imageError),
      const DeepCollectionEquality().hash(usersError),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_CreateChatStateCopyWith<_$_CreateChatState> get copyWith =>
      __$$_CreateChatStateCopyWithImpl<_$_CreateChatState>(this, _$identity);
}

abstract class _CreateChatState implements CreateChatState {
  const factory _CreateChatState(
      {required final List<ChatUser> users,
      required final String name,
      required final String image,
      required final bool isSaving,
      required final Channel? channel,
      required final bool nameError,
      required final bool imageError,
      required final bool usersError,
      required final Either<ApiFailure, Unit>?
          saveFailureOrSuccessOption}) = _$_CreateChatState;

  @override
  List<ChatUser> get users => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Channel? get channel => throw _privateConstructorUsedError;
  @override
  bool get nameError => throw _privateConstructorUsedError;
  @override
  bool get imageError => throw _privateConstructorUsedError;
  @override
  bool get usersError => throw _privateConstructorUsedError;
  @override
  Either<ApiFailure, Unit>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChatStateCopyWith<_$_CreateChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
