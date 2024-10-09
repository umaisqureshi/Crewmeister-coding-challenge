import 'package:crewmeister_coding_challenge/domain/domain.dart';

@injectable
class GetAllMembersUseCase extends SupplierUseCase<MembersEntity> {
  final Repository _repository;
  const GetAllMembersUseCase({required Repository repository})
      : _repository = repository;
  @override
  Future<MembersEntity> task() {
    return _repository.getAllMembers();
  }
}
