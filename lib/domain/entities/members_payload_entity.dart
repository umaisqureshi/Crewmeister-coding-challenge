import 'package:crewmeister_coding_challenge/data/data.dart';

class MembersPayload extends Entity {
  int crewId;
  int id;
  String image;
  String name;
  int userId;

  MembersPayload({
    required this.crewId,
    required this.id,
    required this.image,
    required this.name,
    required this.userId,
  });
}
