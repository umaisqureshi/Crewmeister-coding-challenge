import 'package:crewmeister_coding_challenge/data/data.dart';

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
