// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatChannel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ChatUser> get members => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatChannelCopyWith<ChatChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatChannelCopyWith<$Res> {
  factory $ChatChannelCopyWith(
          ChatChannel value, $Res Function(ChatChannel) then) =
      _$ChatChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<ChatUser> members,
      String image,
      String type});
}

/// @nodoc
class _$ChatChannelCopyWithImpl<$Res> implements $ChatChannelCopyWith<$Res> {
  _$ChatChannelCopyWithImpl(this._value, this._then);

  final ChatChannel _value;
  // ignore: unused_field
  final $Res Function(ChatChannel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? members = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatChannelCopyWith<$Res>
    implements $ChatChannelCopyWith<$Res> {
  factory _$$_ChatChannelCopyWith(
          _$_ChatChannel value, $Res Function(_$_ChatChannel) then) =
      __$$_ChatChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<ChatUser> members,
      String image,
      String type});
}

/// @nodoc
class __$$_ChatChannelCopyWithImpl<$Res> extends _$ChatChannelCopyWithImpl<$Res>
    implements _$$_ChatChannelCopyWith<$Res> {
  __$$_ChatChannelCopyWithImpl(
      _$_ChatChannel _value, $Res Function(_$_ChatChannel) _then)
      : super(_value, (v) => _then(v as _$_ChatChannel));

  @override
  _$_ChatChannel get _value => super._value as _$_ChatChannel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? members = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ChatChannel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatUser>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatChannel extends _ChatChannel {
  const _$_ChatChannel(
      {required this.id,
      required this.name,
      required final List<ChatUser> members,
      required this.image,
      required this.type})
      : _members = members,
        super._();

  @override
  final String id;
  @override
  final String name;
  final List<ChatUser> _members;
  @override
  List<ChatUser> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final String image;
  @override
  final String type;

  @override
  String toString() {
    return 'ChatChannel(id: $id, name: $name, members: $members, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatChannel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_ChatChannelCopyWith<_$_ChatChannel> get copyWith =>
      __$$_ChatChannelCopyWithImpl<_$_ChatChannel>(this, _$identity);
}

abstract class _ChatChannel extends ChatChannel {
  const factory _ChatChannel(
      {required final String id,
      required final String name,
      required final List<ChatUser> members,
      required final String image,
      required final String type}) = _$_ChatChannel;
  const _ChatChannel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<ChatUser> get members => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatChannelCopyWith<_$_ChatChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
