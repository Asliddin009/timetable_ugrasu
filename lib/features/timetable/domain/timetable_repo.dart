import 'entity/type_table.dart';

abstract class TimetableRepo{
  Future<dynamic> getGroups();
  Future<dynamic> getLectures();
  Future<dynamic> getAuditoriums();
  Future<dynamic> getLessons({
    required String fromdate,
    required String todate,
    required String id,
    required TypeTable typeTable,
});

}