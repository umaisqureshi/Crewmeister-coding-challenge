import 'package:crewmeister_coding_challenge/domain/domain.dart';

@injectable
class GetAllAbsencesUseCase extends SupplierUseCase<AbsenceEntity> {
  final Repository _repository;
  const GetAllAbsencesUseCase({required Repository repository})
      : _repository = repository;
  @override
  Future<AbsenceEntity> task() {
    return _repository.getAllAbsences();
  }
}
