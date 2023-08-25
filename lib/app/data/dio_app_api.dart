import 'dart:convert';

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
      connectTimeout: const Duration(seconds: 3),
    );
    dio = Dio(options);
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger());

  }

  @override
  Future getGroups() {
    try {
      return dio.get("groups");
    } catch (_) {
      print("Ошибка в data");
      rethrow;
    }
  }



  Future getLessons({required String fromdate, required String todate, required int groupOid}) {
    try {
      print("lessons?fromdate=$fromdate&todate=$todate&groupOid=$groupOid");
      return dio.get("lessons?fromdate=$fromdate&todate=$todate&groupOid=$groupOid");
    } catch (_) {
      print("Ошибка в data");
      rethrow;
    }
  }
}
