import 'package:crewmeister_coding_challenge/data/data.dart';

class AbsenceDtoMapper extends ListDtoMapper<AbsencePayloadDto> {
  @override
  AbsencePayloadDto mapDtoToData(Map<String, dynamic> result) {
    return AbsencePayloadDto.fromJson(result);
  }
}
