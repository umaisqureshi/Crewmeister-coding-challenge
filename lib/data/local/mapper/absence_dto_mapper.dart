import 'package:crewmeister_coding_challenge/data/base/dto_mapper.dart';
import 'package:crewmeister_coding_challenge/data/data.dart';

class AbsenceDtoMapper extends DtoMapper<AbsenceDto> {
  @override
  AbsenceDto mapDtoToData(Map<String, dynamic> result) {
    return AbsenceDto.fromJson(result);
  }
}
