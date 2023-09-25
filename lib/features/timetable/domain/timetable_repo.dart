abstract class TimetableRepo {
  Future<dynamic> getGroups(bool fromAssets);

  Future<dynamic> getLectures(bool fromAssets);

  Future<dynamic> getAuditoriums(bool fromAssets);

  Future<dynamic> getLessons({
    required String fromdate,
    required String todate,
    required int groupOid,
  });
}
