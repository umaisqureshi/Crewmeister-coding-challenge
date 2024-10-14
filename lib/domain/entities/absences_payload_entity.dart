import 'package:crewmeister_coding_challenge/domain/domain.dart';

class AbsencePayload extends Entity {
  int? admitterId;
  String admitterNote;
  DateTime? confirmedAt;
  DateTime createdAt;
  int crewId;
  String endDate;
  int id;
  String memberNote;
  DateTime? rejectedAt;
  String startDate;
  AbsenceType type;
  int userId;
  Status status;

  AbsencePayload(
      {required this.admitterId,
      required this.admitterNote,
      required this.confirmedAt,
      required this.createdAt,
      required this.crewId,
      required this.endDate,
      required this.id,
      required this.memberNote,
      required this.rejectedAt,
      required this.startDate,
      required this.type,
      required this.userId,
      required this.status});
}
