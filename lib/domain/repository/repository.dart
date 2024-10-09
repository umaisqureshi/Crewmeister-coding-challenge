import 'package:crewmeister_coding_challenge/domain/domain.dart';

abstract class Repository {
  Future<AbsenceEntity> getAllAbsences();
  Future<MembersEntity> getAllMembers();
}
