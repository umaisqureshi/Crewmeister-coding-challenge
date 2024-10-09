import 'package:crewmeister_coding_challenge/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absence_dto.freezed.dart';
part 'absence_dto.g.dart';

@freezed
class AbsenceDto with _$AbsenceDto implements Dto {
  const factory AbsenceDto(
      {required String message,
      required List<AbsencePayloadDto> payload}) = _AbsenceDto;
  factory AbsenceDto.fromJson(Map<String, dynamic> json) =>
      _$AbsenceDtoFromJson(json);
}

@freezed
class AbsencePayloadDto with _$AbsencePayloadDto implements Dto {
  const factory AbsencePayloadDto(
      {int? admitterId,
      required String admitterNote,
      DateTime? confirmedAt,
      required DateTime createdAt,
      required int crewId,
      required String endDate,
      required int id,
      String? memberNote,
      DateTime? rejectedAt,
      required String startDate,
      required String type,
      required int userId}) = _AbsencePayloadDto;
  factory AbsencePayloadDto.fromJson(Map<String, dynamic> json) =>
      _$AbsencePayloadDtoFromJson(json);
}
