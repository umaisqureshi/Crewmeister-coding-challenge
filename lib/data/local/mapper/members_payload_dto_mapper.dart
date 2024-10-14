import 'package:crewmeister_coding_challenge/data/base/dto_mapper.dart';
import 'package:crewmeister_coding_challenge/data/data.dart';

class MembersDtoMapper extends ListDtoMapper<MembersPayloadDto> {
  @override
  MembersPayloadDto mapDtoToData(Map<String, dynamic> result) {
    return MembersPayloadDto.fromJson(result);
  }
}
