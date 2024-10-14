// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_payload_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembersPayloadDtoImpl _$$MembersPayloadDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MembersPayloadDtoImpl(
      crewId: (json['crewId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$MembersPayloadDtoImplToJson(
        _$MembersPayloadDtoImpl instance) =>
    <String, dynamic>{
      'crewId': instance.crewId,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'userId': instance.userId,
    };
