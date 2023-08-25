/*
import 'package:injectable/injectable.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/group_entity/auditorium_entity.dart';
import 'package:timetable_ugrasu/features/timetable/domain/entity/type_table.dart';
import 'package:timetable_ugrasu/features/timetable/domain/timetable_repo.dart';


@Injectable(as: TimetableRepo)
@test
class NetTimetableRepo extends TimetableRepo{
  @override
  Future getAuditoriums() {
    // TODO: implement getAuditoriums
    throw UnimplementedError();
  }

  @override
  Future getGroups()async {
    final listGroup= await Future.delayed(Duration(seconds: 2),()=>[GroupEntity(name: "1501", groupOid: 1,speciality: "Программная инженерия"),GroupEntity(name: "1101", groupOid: 1,speciality: "ИВТ")]);
  }

  @override
  Future getLectures() {
    // TODO: implement getLectures
    throw UnimplementedError();
  }

  @override
  Future getLessons({required String fromdate, required String todate, required String id, required TypeTable typeTable}) {
    // TODO: implement getLessons
    throw UnimplementedError();
  }

}*/
