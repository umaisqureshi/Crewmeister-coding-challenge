import 'dto.dart';

abstract class RemoteMapper<D> {
  const RemoteMapper();
  D mapToData(dynamic result);
}

abstract class DtoMapper<D extends Dto> extends RemoteMapper<D> {
  const DtoMapper();
  D mapDtoToData(Map<String, dynamic> result);

  @override
  D mapToData(dynamic result) {
    return mapDtoToData(result);
  }
}
