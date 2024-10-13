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
  List<AbsencePayload> get filterByDateList =>
      throw _privateConstructorUsedError;
  List<AbsencePayload> get filterByTyeSickness =>
      throw _privateConstructorUsedError;
  List<AbsencePayload> get filterByTypeVacation =>
      throw _privateConstructorUsedError;
  MembersEntity? get members => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  FilterType get filterType => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get isFilterActive => throw _privateConstructorUsedError;
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
      List<AbsencePayload> filterByDateList,
      List<AbsencePayload> filterByTyeSickness,
      List<AbsencePayload> filterByTypeVacation,
      MembersEntity? members,
      DateTime? startDate,
      DateTime? endDate,
      FilterType filterType,
      int limit,
      bool isFilterActive,
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
    Object? filterByDateList = null,
    Object? filterByTyeSickness = null,
    Object? filterByTypeVacation = null,
    Object? members = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? filterType = null,
    Object? limit = null,
    Object? isFilterActive = null,
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
      filterByDateList: null == filterByDateList
          ? _value.filterByDateList
          : filterByDateList // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      filterByTyeSickness: null == filterByTyeSickness
          ? _value.filterByTyeSickness
          : filterByTyeSickness // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      filterByTypeVacation: null == filterByTypeVacation
          ? _value.filterByTypeVacation
          : filterByTypeVacation // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      filterType: null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isFilterActive: null == isFilterActive
          ? _value.isFilterActive
          : isFilterActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<AbsencePayload> filterByDateList,
      List<AbsencePayload> filterByTyeSickness,
      List<AbsencePayload> filterByTypeVacation,
      MembersEntity? members,
      DateTime? startDate,
      DateTime? endDate,
      FilterType filterType,
      int limit,
      bool isFilterActive,
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
    Object? filterByDateList = null,
    Object? filterByTyeSickness = null,
    Object? filterByTypeVacation = null,
    Object? members = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? filterType = null,
    Object? limit = null,
    Object? isFilterActive = null,
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
      filterByDateList: null == filterByDateList
          ? _value._filterByDateList
          : filterByDateList // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      filterByTyeSickness: null == filterByTyeSickness
          ? _value._filterByTyeSickness
          : filterByTyeSickness // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      filterByTypeVacation: null == filterByTypeVacation
          ? _value._filterByTypeVacation
          : filterByTypeVacation // ignore: cast_nullable_to_non_nullable
              as List<AbsencePayload>,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      filterType: null == filterType
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      isFilterActive: null == isFilterActive
          ? _value.isFilterActive
          : isFilterActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      final List<AbsencePayload> filterByDateList = const [],
      final List<AbsencePayload> filterByTyeSickness = const [],
      final List<AbsencePayload> filterByTypeVacation = const [],
      this.members,
      this.startDate,
      this.endDate,
      this.filterType = FilterType.CLEAR,
      this.limit = 10,
      this.isFilterActive = false,
      this.totalLength = 0,
      this.startIndex = 0,
      this.endIndex = 10})
      : _visibleList = visibleList,
        _filterByDateList = filterByDateList,
        _filterByTyeSickness = filterByTyeSickness,
        _filterByTypeVacation = filterByTypeVacation;

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

  final List<AbsencePayload> _filterByDateList;
  @override
  @JsonKey()
  List<AbsencePayload> get filterByDateList {
    if (_filterByDateList is EqualUnmodifiableListView)
      return _filterByDateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterByDateList);
  }

  final List<AbsencePayload> _filterByTyeSickness;
  @override
  @JsonKey()
  List<AbsencePayload> get filterByTyeSickness {
    if (_filterByTyeSickness is EqualUnmodifiableListView)
      return _filterByTyeSickness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterByTyeSickness);
  }

  final List<AbsencePayload> _filterByTypeVacation;
  @override
  @JsonKey()
  List<AbsencePayload> get filterByTypeVacation {
    if (_filterByTypeVacation is EqualUnmodifiableListView)
      return _filterByTypeVacation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterByTypeVacation);
  }

  @override
  final MembersEntity? members;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final FilterType filterType;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final bool isFilterActive;
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
    return 'HomeBlocData(absences: $absences, visibleList: $visibleList, filterByDateList: $filterByDateList, filterByTyeSickness: $filterByTyeSickness, filterByTypeVacation: $filterByTypeVacation, members: $members, startDate: $startDate, endDate: $endDate, filterType: $filterType, limit: $limit, isFilterActive: $isFilterActive, totalLength: $totalLength, startIndex: $startIndex, endIndex: $endIndex)';
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
            const DeepCollectionEquality()
                .equals(other._filterByDateList, _filterByDateList) &&
            const DeepCollectionEquality()
                .equals(other._filterByTyeSickness, _filterByTyeSickness) &&
            const DeepCollectionEquality()
                .equals(other._filterByTypeVacation, _filterByTypeVacation) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.filterType, filterType) ||
                other.filterType == filterType) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.isFilterActive, isFilterActive) ||
                other.isFilterActive == isFilterActive) &&
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
      const DeepCollectionEquality().hash(_filterByDateList),
      const DeepCollectionEquality().hash(_filterByTyeSickness),
      const DeepCollectionEquality().hash(_filterByTypeVacation),
      members,
      startDate,
      endDate,
      filterType,
      limit,
      isFilterActive,
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
      final List<AbsencePayload> filterByDateList,
      final List<AbsencePayload> filterByTyeSickness,
      final List<AbsencePayload> filterByTypeVacation,
      final MembersEntity? members,
      final DateTime? startDate,
      final DateTime? endDate,
      final FilterType filterType,
      final int limit,
      final bool isFilterActive,
      final int totalLength,
      final int startIndex,
      final int endIndex}) = _$HomeBlocDataImpl;

  @override
  AbsenceEntity? get absences;
  @override
  List<AbsencePayload> get visibleList;
  @override
  List<AbsencePayload> get filterByDateList;
  @override
  List<AbsencePayload> get filterByTyeSickness;
  @override
  List<AbsencePayload> get filterByTypeVacation;
  @override
  MembersEntity? get members;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  FilterType get filterType;
  @override
  int get limit;
  @override
  bool get isFilterActive;
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
