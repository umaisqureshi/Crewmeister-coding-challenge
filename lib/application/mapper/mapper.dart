abstract class Entity {}

abstract class Dto {}

abstract class EntityMapper<E extends Entity, D extends Dto> {
  const EntityMapper();
  E mapToEntity(D dto);
}

sealed class RemoteMapper<D> {
  const RemoteMapper();
  D mapToData(dynamic result);
}

abstract class ListDtoMapper<D extends Dto> extends RemoteMapper<List<D>> {
  const ListDtoMapper();
  @override
  List<D> mapToData(dynamic result) {
    return (result as List<dynamic>)
        .map((e) => mapDtoToData(e))
        .toList(growable: false);
  }

  D mapDtoToData(Map<String, dynamic> result);
}
