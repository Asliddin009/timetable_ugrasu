import 'package:dio/dio.dart';

abstract class AppApi {
//Авторизация
  Future<dynamic> resetPassword({
  required String username,
  });

  Future<dynamic> signIn({
  required String password,
  required String username,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate({
  String? username,
  String? email,
  });

  Future<dynamic> passwordUpdate({
  required String oldPassword,
  required String newPassword,
  });

  Future<dynamic> refreshToken({
  String? refreshToken,
  });

  request(String path) {}
  Future<dynamic> fetch(RequestOptions requestOptions);

  //Информационный план
  Future<dynamic> fetchInfoPlans({required int page, required int rowsPerPage});
  Future<dynamic> fetchInfoPlansWithFilter({required int page, required int rowsPerPage,String? organizationId,String? stateId,String? financialYearId, String? createdAtFrom});
  Future<dynamic> createInfoPlan(Map args);
  Future<dynamic> updateInfoPlan(String id, Map args);
  Future<dynamic> fetchInfoPlan( String id);
  Future<dynamic> deleteInfoPlan( String id);
  Future<dynamic> fetchStateHistorysInfoPlan( String id);
  Future<dynamic> fetchCoExecutors( String id);



  //Мероприятия по закупке
  Future<dynamic> fetchEvents({required int page, required int rowsPerPage});
  Future<dynamic> createEvent(Map args);
  Future<dynamic> fetchEvent( String id);
  Future<dynamic> deleteEvent( String id);
  Future<dynamic> fetchStateHistorysEvent( String id);
  Future<dynamic> fetchResponsiblePerson( String q);
  Future<dynamic> updateEvent(String id, Map args);


  //Закупки
  Future<dynamic> fetchPurchases({required int page, required int rowsPerPage});
  Future<dynamic> createPurchase(Map args);
  Future<dynamic> fetchPurchase( String id);
  Future<dynamic> deletePurchase( String id);
  Future<dynamic> updatePurchase( String id, Map args);


  Future<dynamic> fetchOrganizations();


}
