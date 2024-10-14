import 'package:crewmeister_coding_challenge/domain/domain.dart';

@injectable
class GetAllMembersUseCase extends SupplierUseCase<List<MembersPayload>> {
  final HomeRepository _repository;
  const GetAllMembersUseCase({required HomeRepository repository})
      : _repository = repository;
  @override
  Future<List<MembersPayload>> task() {
    return _repository.getAllMembers();
  }
}
