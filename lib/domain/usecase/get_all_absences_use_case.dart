import 'package:crewmeister_coding_challenge/domain/domain.dart';

@injectable
class GetAllAbsencesUseCase extends SupplierUseCase<List<AbsencePayload>> {
  final HomeRepository _repository;
  const GetAllAbsencesUseCase({required HomeRepository repository})
      : _repository = repository;
  @override
  Future<List<AbsencePayload>> task() {
    return _repository.getAllAbsences();
  }
}
