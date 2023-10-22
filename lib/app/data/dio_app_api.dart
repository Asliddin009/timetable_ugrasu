import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../domain/app_api.dart';
import '../domain/app_config.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: const Duration(seconds: 10),
    );
    dio = Dio(options);
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger());

  }

  @override
  Future getGroups() {
    try {
      log("Получили Группы");
      return dio.get("groups");
    } catch (_) {
      log("Ошибка в data");
      rethrow;
    }
  }

  @override
  Future getLessons({required String fromdate, required String todate, required int groupOid}) {
    try {
      log("lessons?fromdate=$fromdate&todate=$todate&groupOid=$groupOid");
      return dio.get("lessons?fromdate=$fromdate&todate=$todate&groupOid=$groupOid");
    } catch (_) {
      log("Ошибка в data");
      rethrow;
    }
  }

  @override
  Future getAuditoriums() {
    try {
      log("Получили Аудитории");
      return dio.get("auditoriums");
    } catch (_) {
      log("Ошибка в data");
      rethrow;
    }
  }

  @override
  Future getLectures() {
    try {
      log("Получили Преподов");
      return dio.get("lecturers");
    } catch (_) {
      log("Ошибка в data");
      rethrow;
    }
  }
}
