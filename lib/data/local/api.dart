import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:crewmeister_coding_challenge/data/data.dart';

const absencesPath = 'assets/json/absences.json';
const membersPath = 'assets/json/members.json';

class ApiService {
  final AbsenceDtoMapper _absenceDtoMapper = AbsenceDtoMapper();
  final MembersDtoMapper _membersDtoMapper = MembersDtoMapper();

  Future<Map<String, dynamic>> readJsonFile(String path) async {
    String content = await rootBundle.loadString(path);
    Map<String, dynamic> data = jsonDecode(content);
    return data;
  }

  Future<AbsenceDto> absences() async {
    Map<String, dynamic> absences = {};
    try {
      absences = await readJsonFile(absencesPath);
    } catch (e) {
      throw Exception(e.toString());
    }
    return _absenceDtoMapper.mapDtoToData(absences);
  }

  Future<MembersDto> members() async {
    Map<String, dynamic> members = {};
    try {
      members = await readJsonFile(membersPath);
    } catch (e) {
      throw Exception(e.toString());
    }
    return _membersDtoMapper.mapDtoToData(members);
  }
}
