import 'package:crewmeister_coding_challenge/data/local/api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test("Contain User id", () async {
    List<dynamic> memberData = await members();
    for (var member in memberData) {
      expect(member.containsKey("userId"), isTrue);
    }
  });

  test("Contain Start Date", () async {
    List<dynamic> absenceData = await absences();
    for (var absence in absenceData) {
      expect(absence.containsKey("startDate"), isTrue);
    }
  });
}
