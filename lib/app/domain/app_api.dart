import 'package:dio/dio.dart';

abstract class AppApi {
  //Авторизация


  //Расписание
  Future<dynamic> getGroups();
  Future<dynamic> getLessons({required String fromdate, required String todate, required int groupOid});


    //Учебный план



}
