import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/type_table.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';

import '../../../app/domain/app_api.dart';


@Injectable(as: TimetableRepo)
class NetTimetableRepo extends TimetableRepo{
  final AppApi api;

  NetTimetableRepo(this.api);
  @override
  Future getAuditoriums() {
    // TODO: implement getAuditoriums
    throw UnimplementedError();
  }

  @override
  Future getGroups() async{
    try {
      final response = await api.getGroups();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future getLectures() {
    // TODO: implement getLectures
    throw UnimplementedError();
  }

  @override
  Future getLessons({required String fromdate, required String todate, required int groupOid})async {
    try {
      final response = await api.getLessons(fromdate: fromdate, todate: todate, groupOid: groupOid);


      return response.data;
    } catch (_) {
      rethrow;
    }
  }

}