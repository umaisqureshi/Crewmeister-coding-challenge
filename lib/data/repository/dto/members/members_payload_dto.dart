import 'package:crewmeister_coding_challenge/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'members_payload_dto.freezed.dart';
part 'members_payload_dto.g.dart';

@freezed
class MembersPayloadDto with _$MembersPayloadDto implements Dto {
  const factory MembersPayloadDto(
      {required int crewId,
      required int id,
      required String image,
      required String name,
      required int userId}) = _MembersPayloadDto;
  factory MembersPayloadDto.fromJson(Map<String, dynamic> json) =>
      _$MembersPayloadDtoFromJson(json);
}
