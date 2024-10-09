import 'dto.dart';
import 'package:crewmeister_coding_challenge/data/data.dart';

abstract class EntityMapper<E extends Entity, D extends Dto> {
  const EntityMapper();
  E mapToEntity(D dto);
}
