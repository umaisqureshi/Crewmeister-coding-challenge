import 'package:crewmeister_coding_challenge/data/data.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImp extends HomeRepository {
  final AbsencesPayloadEntityMapper _absencesEntityMapper =
      const AbsencesPayloadEntityMapper();
  final MembersPayloadEntityMapper _membersEntityMapper =
      const MembersPayloadEntityMapper();
  final AbsenceDtoMapper _absenceDtoMapper = AbsenceDtoMapper();
  final MembersDtoMapper _membersDtoMapper = MembersDtoMapper();

  @override
  Future<List<AbsencePayload>> getAllAbsences() {
    return absences().then((data) {
      return data
          .map((e) => _absencesEntityMapper
              .mapToEntity(_absenceDtoMapper.mapDtoToData(e)))
          .toList();
    });
  }

  @override
  Future<List<MembersPayload>> getAllMembers() {
    return members().then((data) {
      return data
          .map((e) => _membersEntityMapper
              .mapToEntity(_membersDtoMapper.mapDtoToData(e)))
          .toList();
    });
  }
}
