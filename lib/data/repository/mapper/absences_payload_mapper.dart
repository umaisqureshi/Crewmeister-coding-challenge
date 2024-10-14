import 'package:crewmeister_coding_challenge/data/data.dart';

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
            ? AbsenceType.VACATION
            : AbsenceType.SICKNESS,
        status: dto.rejectedAt == null && dto.confirmedAt == null
            ? Status.REQUESTED
            : dto.confirmedAt != null
                ? Status.CONFIRMED
                : Status.REJECTED,
        userId: dto.userId);
  }
}
