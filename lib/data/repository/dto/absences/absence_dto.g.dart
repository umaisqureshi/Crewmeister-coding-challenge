// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbsenceDtoImpl _$$AbsenceDtoImplFromJson(Map<String, dynamic> json) =>
    _$AbsenceDtoImpl(
      message: json['message'] as String,
      payload: (json['payload'] as List<dynamic>)
          .map((e) => AbsencePayloadDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AbsenceDtoImplToJson(_$AbsenceDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'payload': instance.payload,
    };

_$AbsencePayloadDtoImpl _$$AbsencePayloadDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AbsencePayloadDtoImpl(
      admitterId: (json['admitterId'] as num?)?.toInt(),
      admitterNote: json['admitterNote'] as String,
      confirmedAt: json['confirmedAt'] == null
          ? null
          : DateTime.parse(json['confirmedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      crewId: (json['crewId'] as num).toInt(),
      endDate: json['endDate'] as String,
      id: (json['id'] as num).toInt(),
      memberNote: json['memberNote'] as String?,
      rejectedAt: json['rejectedAt'] == null
          ? null
          : DateTime.parse(json['rejectedAt'] as String),
      startDate: json['startDate'] as String,
      type: json['type'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$AbsencePayloadDtoImplToJson(
        _$AbsencePayloadDtoImpl instance) =>
    <String, dynamic>{
      'admitterId': instance.admitterId,
      'admitterNote': instance.admitterNote,
      'confirmedAt': instance.confirmedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'crewId': instance.crewId,
      'endDate': instance.endDate,
      'id': instance.id,
      'memberNote': instance.memberNote,
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'startDate': instance.startDate,
      'type': instance.type,
      'userId': instance.userId,
    };
