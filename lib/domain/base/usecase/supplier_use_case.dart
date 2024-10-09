import 'package:crewmeister_coding_challenge/domain/domain.dart';
import '../../base/usecase/usecase.dart';

abstract class SupplierUseCase<E> implements UseCase {
  const SupplierUseCase();

  Future<E> task();

  Future perform(UseCaseResult<E> result) async {
    try {
      E data = await task();
      result.onSuccess?.call(data);
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(Exception(e.toString()));
    }
    result.onFinished?.call();
  }
}
