import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';

import '../../../app/domain/app_api.dart';

@Injectable(as: TimetableRepo)
class NetTimetableRepo extends TimetableRepo {
  final AppApi api;

  NetTimetableRepo(this.api);

  @override
  Future getAuditoriums(bool fromAssets) async {
    try {
      if (fromAssets) {
        String jsonString = await rootBundle
            .loadString("assets/response_example/auditoriums_response.json");
        final decode = json.decode(jsonString);
        return decode;
      } else {
        final response = await api.getAuditoriums();
        return response.data;
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future getGroups(bool fromAssets) async {
    try {
      if (fromAssets) {
        String jsonString = await rootBundle
            .loadString('assets/response_example/group_response.json');
        final decode = json.decode(jsonString);
        return decode;
      } else {
        final response = await api.getGroups();
        return response.data;
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future getLectures(bool fromAssets) async {
    try {
      if (fromAssets) {
        String jsonString = await rootBundle
            .loadString('assets/response_example/lectures_response.json');
        final decode = json.decode(jsonString);
        return decode;
      } else {
        final response = await api.getLectures();
        return response.data;
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future getLessons(
      {required String fromdate,
      required String todate,
      required int groupOid}) async {
    try {
      final response = await api.getLessons(
          fromdate: fromdate, todate: todate, groupOid: groupOid);
      return response.data;
    } catch (_) {
      rethrow;
    }
  }
}
