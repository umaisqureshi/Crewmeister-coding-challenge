// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocData {
  AbsenceEntity? get absences => throw _privateConstructorUsedError;
  List<AbsencePayload> get visibleList => throw _privateConstructorUsedError;
  MembersEntity? get members => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalLength => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocDataCopyWith<HomeBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocDataCopyWith<$Res> {
  factory $HomeBlocDataCopyWith(
          HomeBlocData value, $Res Function(HomeBlocData) then) =
      _$HomeBlocDataCopyWithImpl<$Res, HomeBlocData>;
  @useResult
  $Res call(
      {AbsenceEntity? absences,
      List<AbsencePayload> visibleList,
      MembersEntity? members,
      int limit,
      int totalLength,
      int startIndex,
      int endIndex});
}

/// @nodoc
class _$HomeBlocDataCopyWithImpl<$Res, $Val extends HomeBlocData>
    implements $HomeBlocDataCopyWith<$Res> {
  _$HomeBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absences = freezed,
    Object? visibleList = null,
    Object? members = freezed,
    Object? limit = null,
    Object? totalLength = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_value.copyWith(
      absences: freezed == absences
          ? _value.absences
          : absences // ignore: cast_nullable_to_non_nullable
              as AbsenceEntity?,
      visibleList: null == visibleList
          ? _value.visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalLength: null == totalLength
          ? _value.totalLength
          : totalLength // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBlocDataImplCopyWith<$Res>
    implements $HomeBlocDataCopyWith<$Res> {
  factory _$$HomeBlocDataImplCopyWith(
          _$HomeBlocDataImpl value, $Res Function(_$HomeBlocDataImpl) then) =
      __$$HomeBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AbsenceEntity? absences,
      List<AbsencePayload> visibleList,
      MembersEntity? members,
      int limit,
      int totalLength,
      int startIndex,
      int endIndex});
}

/// @nodoc
class __$$HomeBlocDataImplCopyWithImpl<$Res>
    extends _$HomeBlocDataCopyWithImpl<$Res, _$HomeBlocDataImpl>
    implements _$$HomeBlocDataImplCopyWith<$Res> {
  __$$HomeBlocDataImplCopyWithImpl(
      _$HomeBlocDataImpl _value, $Res Function(_$HomeBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absences = freezed,
    Object? visibleList = null,
    Object? members = freezed,
    Object? limit = null,
    Object? totalLength = null,
    Object? startIndex = null,
    Object? endIndex = null,
  }) {
    return _then(_$HomeBlocDataImpl(
      absences: freezed == absences
          ? _value.absences
          : absences // ignore: cast_nullable_to_non_nullable
              as AbsenceEntity?,
      visibleList: null == visibleList
          ? _value._visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalLength: null == totalLength
          ? _value.totalLength
          : totalLength // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataImpl implements _HomeBlocData {
  const _$HomeBlocDataImpl(
      {this.absences,
      final List<AbsencePayload> visibleList = const [],
      this.members,
      this.limit = 10,
      this.totalLength = 0,
      this.startIndex = 0,
      this.endIndex = 10})
      : _visibleList = visibleList;

  @override
  final AbsenceEntity? absences;
  final List<AbsencePayload> _visibleList;
  @override
  @JsonKey()
  List<AbsencePayload> get visibleList {
    if (_visibleList is EqualUnmodifiableListView) return _visibleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleList);
  }

  @override
  final MembersEntity? members;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int totalLength;
  @override
  @JsonKey()
  final int startIndex;
  @override
  @JsonKey()
  final int endIndex;

  @override
  String toString() {
    return 'HomeBlocData(absences: $absences, visibleList: $visibleList, members: $members, limit: $limit, totalLength: $totalLength, startIndex: $startIndex, endIndex: $endIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataImpl &&
            (identical(other.absences, absences) ||
                other.absences == absences) &&
            const DeepCollectionEquality()
                .equals(other._visibleList, _visibleList) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalLength, totalLength) ||
                other.totalLength == totalLength) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      absences,
      const DeepCollectionEquality().hash(_visibleList),
      members,
      limit,
      totalLength,
      startIndex,
      endIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      __$$HomeBlocDataImplCopyWithImpl<_$HomeBlocDataImpl>(this, _$identity);
}

abstract class _HomeBlocData implements HomeBlocData {
  const factory _HomeBlocData(
      {final AbsenceEntity? absences,
      final List<AbsencePayload> visibleList,
      final MembersEntity? members,
      final int limit,
      final int totalLength,
      final int startIndex,
      final int endIndex}) = _$HomeBlocDataImpl;

  @override
  AbsenceEntity? get absences;
  @override
  List<AbsencePayload> get visibleList;
  @override
  MembersEntity? get members;
  @override
  int get limit;
  @override
  int get totalLength;
  @override
  int get startIndex;
  @override
  int get endIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
