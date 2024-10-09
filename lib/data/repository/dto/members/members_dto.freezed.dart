// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MembersDto _$MembersDtoFromJson(Map<String, dynamic> json) {
  return _MembersDto.fromJson(json);
}

/// @nodoc
mixin _$MembersDto {
  String get message => throw _privateConstructorUsedError;
  List<MembersPayloadDto> get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersDtoCopyWith<MembersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersDtoCopyWith<$Res> {
  factory $MembersDtoCopyWith(
          MembersDto value, $Res Function(MembersDto) then) =
      _$MembersDtoCopyWithImpl<$Res, MembersDto>;
  @useResult
  $Res call({String message, List<MembersPayloadDto> payload});
}

/// @nodoc
class _$MembersDtoCopyWithImpl<$Res, $Val extends MembersDto>
    implements $MembersDtoCopyWith<$Res> {
  _$MembersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<MembersPayloadDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembersDtoImplCopyWith<$Res>
    implements $MembersDtoCopyWith<$Res> {
  factory _$$MembersDtoImplCopyWith(
          _$MembersDtoImpl value, $Res Function(_$MembersDtoImpl) then) =
      __$$MembersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<MembersPayloadDto> payload});
}

/// @nodoc
class __$$MembersDtoImplCopyWithImpl<$Res>
    extends _$MembersDtoCopyWithImpl<$Res, _$MembersDtoImpl>
    implements _$$MembersDtoImplCopyWith<$Res> {
  __$$MembersDtoImplCopyWithImpl(
      _$MembersDtoImpl _value, $Res Function(_$MembersDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? payload = null,
  }) {
    return _then(_$MembersDtoImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<MembersPayloadDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembersDtoImpl implements _MembersDto {
  const _$MembersDtoImpl(
      {required this.message, required final List<MembersPayloadDto> payload})
      : _payload = payload;

  factory _$MembersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembersDtoImplFromJson(json);

  @override
  final String message;
  final List<MembersPayloadDto> _payload;
  @override
  List<MembersPayloadDto> get payload {
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payload);
  }

  @override
  String toString() {
    return 'MembersDto(message: $message, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembersDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MembersDtoImplCopyWith<_$MembersDtoImpl> get copyWith =>
      __$$MembersDtoImplCopyWithImpl<_$MembersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembersDtoImplToJson(
      this,
    );
  }
}

abstract class _MembersDto implements MembersDto {
  const factory _MembersDto(
      {required final String message,
      required final List<MembersPayloadDto> payload}) = _$MembersDtoImpl;

  factory _MembersDto.fromJson(Map<String, dynamic> json) =
      _$MembersDtoImpl.fromJson;

  @override
  String get message;
  @override
  List<MembersPayloadDto> get payload;
  @override
  @JsonKey(ignore: true)
  _$$MembersDtoImplCopyWith<_$MembersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembersPayloadDto _$MembersPayloadDtoFromJson(Map<String, dynamic> json) {
  return _MembersPayloadDto.fromJson(json);
}

/// @nodoc
mixin _$MembersPayloadDto {
  int get crewId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersPayloadDtoCopyWith<MembersPayloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersPayloadDtoCopyWith<$Res> {
  factory $MembersPayloadDtoCopyWith(
          MembersPayloadDto value, $Res Function(MembersPayloadDto) then) =
      _$MembersPayloadDtoCopyWithImpl<$Res, MembersPayloadDto>;
  @useResult
  $Res call({int crewId, int id, String image, String name, int userId});
}

/// @nodoc
class _$MembersPayloadDtoCopyWithImpl<$Res, $Val extends MembersPayloadDto>
    implements $MembersPayloadDtoCopyWith<$Res> {
  _$MembersPayloadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crewId = null,
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      crewId: null == crewId
          ? _value.crewId
          : crewId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembersPayloadDtoImplCopyWith<$Res>
    implements $MembersPayloadDtoCopyWith<$Res> {
  factory _$$MembersPayloadDtoImplCopyWith(_$MembersPayloadDtoImpl value,
          $Res Function(_$MembersPayloadDtoImpl) then) =
      __$$MembersPayloadDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int crewId, int id, String image, String name, int userId});
}

/// @nodoc
class __$$MembersPayloadDtoImplCopyWithImpl<$Res>
    extends _$MembersPayloadDtoCopyWithImpl<$Res, _$MembersPayloadDtoImpl>
    implements _$$MembersPayloadDtoImplCopyWith<$Res> {
  __$$MembersPayloadDtoImplCopyWithImpl(_$MembersPayloadDtoImpl _value,
      $Res Function(_$MembersPayloadDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crewId = null,
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? userId = null,
  }) {
    return _then(_$MembersPayloadDtoImpl(
      crewId: null == crewId
          ? _value.crewId
          : crewId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembersPayloadDtoImpl implements _MembersPayloadDto {
  const _$MembersPayloadDtoImpl(
      {required this.crewId,
      required this.id,
      required this.image,
      required this.name,
      required this.userId});

  factory _$MembersPayloadDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembersPayloadDtoImplFromJson(json);

  @override
  final int crewId;
  @override
  final int id;
  @override
  final String image;
  @override
  final String name;
  @override
  final int userId;

  @override
  String toString() {
    return 'MembersPayloadDto(crewId: $crewId, id: $id, image: $image, name: $name, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembersPayloadDtoImpl &&
            (identical(other.crewId, crewId) || other.crewId == crewId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crewId, id, image, name, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MembersPayloadDtoImplCopyWith<_$MembersPayloadDtoImpl> get copyWith =>
      __$$MembersPayloadDtoImplCopyWithImpl<_$MembersPayloadDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembersPayloadDtoImplToJson(
      this,
    );
  }
}

abstract class _MembersPayloadDto implements MembersPayloadDto {
  const factory _MembersPayloadDto(
      {required final int crewId,
      required final int id,
      required final String image,
      required final String name,
      required final int userId}) = _$MembersPayloadDtoImpl;

  factory _MembersPayloadDto.fromJson(Map<String, dynamic> json) =
      _$MembersPayloadDtoImpl.fromJson;

  @override
  int get crewId;
  @override
  int get id;
  @override
  String get image;
  @override
  String get name;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$MembersPayloadDtoImplCopyWith<_$MembersPayloadDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
