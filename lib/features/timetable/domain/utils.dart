import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../app/di/init_di.dart';
import '../../auth/domain/auth_state/auth_cubit.dart';

class UtilsTimetable {
  static bool checkMainID(int id) {
    final mainId = locator
        .get<AuthCubit>()
        .state
        .whenOrNull(authorized: (userEntity) => userEntity.idTimetableEntity);
    if (kDebugMode) log((mainId == id).toString());
    return mainId == id;
  }
}
