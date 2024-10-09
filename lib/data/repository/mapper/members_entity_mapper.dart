import 'package:crewmeister_coding_challenge/data/data.dart';

class MembersEntityMapper extends EntityMapper<MembersEntity, MembersDto> {
  const MembersEntityMapper();

  @override
  MembersEntity mapToEntity(MembersDto dto) {
    return MembersEntity(
        payload: dto.payload.map((e) {
      return const MembersPayloadEntityMapper().mapToEntity(e);
    }).toList());
  }
}

class MembersPayloadEntityMapper
    extends EntityMapper<MembersPayload, MembersPayloadDto> {
  const MembersPayloadEntityMapper();

  @override
  MembersPayload mapToEntity(MembersPayloadDto dto) {
    return MembersPayload(
        image: dto.image,
        name: dto.name,
        crewId: dto.crewId,
        id: dto.id,
        userId: dto.userId);
  }
}
