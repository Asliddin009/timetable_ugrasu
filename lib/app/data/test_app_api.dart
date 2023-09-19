import 'package:timetable_ugrasu/app/domain/app_api.dart';

class TestAppApi implements AppApi{
  @override
  Future getAuditoriums() {
    // TODO: implement getAuditoriums
    throw UnimplementedError();
  }

  @override
  Future getGroups() {
    // TODO: implement getGroups
    throw UnimplementedError();
  }

  @override
  Future getLectures() {
    // TODO: implement getLectures
    throw UnimplementedError();
  }

  @override
  Future getLessons({required String fromdate, required String todate, required int groupOid}) {
    // TODO: implement getLessons
    throw UnimplementedError();
  }
  
}