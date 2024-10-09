import 'package:crewmeister_coding_challenge/data/data.dart';

@Injectable(as: Repository)
class RepositoryImplementation extends Repository {
  final ApiService _service = ApiService();
  final AbsencesEntityMapper _absencesEntityMapper =
      const AbsencesEntityMapper();
  final MembersEntityMapper _membersEntityMapper = const MembersEntityMapper();

  @override
  Future<AbsenceEntity> getAllAbsences() {
    return _service.absences().then((data) {
      return _absencesEntityMapper.mapToEntity(data);
    });
  }

  @override
  Future<MembersEntity> getAllMembers() {
    return _service.members().then((data) {
      return _membersEntityMapper.mapToEntity(data);
    });
  }
}
