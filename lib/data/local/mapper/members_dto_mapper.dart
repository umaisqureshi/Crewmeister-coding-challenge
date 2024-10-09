import 'package:crewmeister_coding_challenge/data/base/dto_mapper.dart';
import 'package:crewmeister_coding_challenge/data/data.dart';

class MembersDtoMapper extends DtoMapper<MembersDto> {
  @override
  MembersDto mapDtoToData(Map<String, dynamic> result) {
    return MembersDto.fromJson(result);
  }
}
