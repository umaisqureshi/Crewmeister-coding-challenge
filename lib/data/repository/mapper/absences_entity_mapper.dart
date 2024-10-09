import 'package:crewmeister_coding_challenge/data/data.dart';

class AbsencesEntityMapper extends EntityMapper<AbsenceEntity, AbsenceDto> {
  const AbsencesEntityMapper();

  @override
  AbsenceEntity mapToEntity(AbsenceDto dto) {
    return AbsenceEntity(
        payload: dto.payload.map((e) {
      return const AbsencesPayloadEntityMapper().mapToEntity(e);
    }).toList());
  }
}

class AbsencesPayloadEntityMapper
    extends EntityMapper<AbsencePayload, AbsencePayloadDto> {
  const AbsencesPayloadEntityMapper();

  @override
  AbsencePayload mapToEntity(AbsencePayloadDto dto) {
    return AbsencePayload(
        admitterId: dto.admitterId,
        admitterNote: dto.admitterNote ?? "",
        confirmedAt: dto.confirmedAt,
        createdAt: dto.createdAt,
        crewId: dto.crewId,
        endDate: dto.endDate,
        id: dto.id,
        memberNote: dto.memberNote ?? "",
        rejectedAt: dto.rejectedAt,
        startDate: dto.startDate,
        type: dto.type.toLowerCase().contains("vacation")
            ? Type.VACATION
            : Type.SICKNESS,
        userId: dto.userId);
  }
}
