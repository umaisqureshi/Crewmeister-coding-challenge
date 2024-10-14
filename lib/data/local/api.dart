import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:crewmeister_coding_challenge/data/data.dart';

Future<List<dynamic>> readJsonFile(String path) async {
  String content = await rootBundle.loadString(path);
  Map<String, dynamic> data = jsonDecode(content);
  return data['payload'];
}

Future<List<dynamic>> absences() async {
  List<dynamic> absences = [];
  try {
    absences = await readJsonFile(absencesPath);
  } catch (e) {
    throw Exception(e.toString());
  }
  return absences;
}

Future<List<dynamic>> members() async {
  List<dynamic> members = [];
  try {
    members = await readJsonFile(membersPath);
  } catch (e) {
    throw Exception(e.toString());
  }
  return members;
}
