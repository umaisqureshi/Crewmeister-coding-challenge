import 'package:crewmeister_coding_challenge/domain/domain.dart';

abstract class HomeRepository {
  Future<List<AbsencePayload>> getAllAbsences();
  Future<List<MembersPayload>> getAllMembers();
}
